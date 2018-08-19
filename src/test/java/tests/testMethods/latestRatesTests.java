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

public class latestRatesTests {
    private Map<String, String> rates;
    private String date;

    @Given("foreign rates")
    public void foreign_value(Map<String, String> rates) {
        /*
        Все аналогично. Данные динамично меняются, их надо откуда-то забирать.
        Тесты будут падать.
         */
        this.rates = rates;
    }

    /*
    Не успел разобраться, как в Rest Assured считывать данные в необходимом формате,
        поэтому сделал так как умею: JSON в объект и сравнил уже объекты.
        Денежные значения хранить в double нельзя, с long и умножением заморачиваться не стал,
        String тут отлично подходит для этих небольших тестов.
     */
    @Then("i have response")
    public void i_have_response() {
        Response response = new FixerRequest().getLatest(rates, null);
        String responseString = response.body().asString();
        FixerResponseDataClass fix = new Gson().fromJson(responseString, FixerResponseDataClass.class);
        checkFields(response);
        Assert.assertEquals(rates, fix.rates);
    }

    @Then("i have last rates response for empty symbols")
    public void i_have_response_for_all() {
        Response response = new FixerRequest().getLatest();
        String responseString = response.body().asString();
        FixerResponseDataClass fix = new Gson().fromJson(responseString, FixerResponseDataClass.class);
        checkFields(response);
        Assert.assertEquals(rates, fix.rates);
    }

    @Then("i have response with base = (.{3})$")
    public void i_have_response_with_base(String base) {
        Response response = new FixerRequest().getLatest(rates, base);
        String responseString = response.body().asString();
        FixerResponseDataClass fix = new Gson().fromJson(responseString, FixerResponseDataClass.class);
        checkFields(response);
        Assert.assertEquals(rates, fix.rates);
    }

    private void checkFields(Response response) {
        date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        response.then()
                .body("success", equalTo(true))
                //Что из себя представляет timestamp я на первый взгляд не понял. Похоже на значение в секундах, но тут нужно ТЗ и понимание важности параметра. Пропустил.
                .body("base", equalTo("EUR"))
                .body("date", equalTo(date));
    }

}
