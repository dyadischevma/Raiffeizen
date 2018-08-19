package tests.testMethods;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import model.FixerRequest;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import static org.hamcrest.Matchers.equalTo;

public class historicalRatesErrorsTests {
    private String date;

    @Given("error historical foreign rates for (.{10})$")
    public void foreign_value_historical(String date) {
        this.date = date;
    }

    @Given("error historical foreign rates for tomorrow")
    public void foreign_value_historical_tomorrow() {
        this.date = LocalDateTime.now().plusDays(1).format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }

    @Then("I have error")
    public void i_have_historical_response(List<List<String>> error) {
        new FixerRequest().getDate(date, null, null)
                .then()
                .body("success", equalTo(false))
                .body("error.code", equalTo(Integer.parseInt(error.get(0).get(0)))) //Спорное решение парсить в int, но пока не умею приводить данные в Rest Assured
                .body("error.type", equalTo(error.get(0).get(1)))
                .body("error.info", equalTo(error.get(0).get(2)));
    }
}
