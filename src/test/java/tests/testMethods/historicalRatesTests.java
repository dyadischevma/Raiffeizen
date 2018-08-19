package tests.testMethods;

import com.google.gson.Gson;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import io.restassured.response.Response;
import model.FixerRequest;
import model.FixerResponseDataClass;
import org.junit.Assert;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Map;

import static org.hamcrest.CoreMatchers.equalTo;

public class historicalRatesTests {
    private Map<String, String> rates;
    private String date;

    @Given("historical foreign rates for (.{10})$")
    public void foreign_value_historical_rates(String date, Map<String, String> rates) {
        this.rates = rates;
        this.date = date;
    }

    @Given("historical foreign rates for yesterday")
    public void foreign_value_historical_yesterday(Map<String, String> rates) {
        this.rates = rates;
        /*
        В таком тесте мы можем или проверить что хоть что-то возвращается,
        или должны обращаться за данным за вчера туда, где оно хранится, скорее всего в БД.
        Проверять хоть что-то вариант не самый лучший, здесь должен быть запрос данных.
         */
        this.date = LocalDateTime.now().minusDays(1).format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }

    @Given("historical foreign rates for today")
    public void foreign_value_historical_today(Map<String, String> rates) {
        this.rates = rates;
        /*
        Аналогично предыдущим тестам
         */
        this.date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }

    @Then("i have historical rates response")
    public void i_have_historical_response() {
        Response response = new FixerRequest().getDate(date, rates, null);
        String responseString = response.body().asString();
        FixerResponseDataClass fix = new Gson().fromJson(responseString, FixerResponseDataClass.class);
        /*
        Не успел разобраться, как в Rest Assured считывать данные в необходимом формате,
        поэтому сделал так как умею: JSON в объект и сравнил уже объекты.
        Денежные значения хранить в double нельзя, с long и умножением заморачиваться не стал,
        String тут отлично подходит для этих небольших тестов.
         */
        checkFields(response);
        Assert.assertEquals(rates, fix.rates);
    }

    private void checkFields(Response response) {
        response.then()
                .body("success", equalTo(true))
                //Что из себя представляет timestamp я на первый взгляд не понял. Похоже на значение в секундах, но тут нужно ТЗ и понимание важности параметра. Пропустил.
                .body("historical", equalTo(true))
                .body("base", equalTo("EUR"))
                .body("date", equalTo(date));
    }

    @Then("i have historical rates response for all")
    public void i_have_historical_response_all() {
        Response response = new FixerRequest().getDate(date);
        String responseString = response.body().asString();
        FixerResponseDataClass fix = new Gson().fromJson(responseString, FixerResponseDataClass.class);
        checkFields(response);
        Assert.assertEquals(fix.rates, rates);
    }

}
