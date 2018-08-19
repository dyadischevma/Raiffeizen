package tests.testMethods;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import model.FixerRequest;

import java.util.List;
import java.util.Map;

import static org.hamcrest.Matchers.equalTo;

public class forbiddenRequestsTests {
    private String date;
    private String base;

    @When("i want send request with base = (.{3})$")
    public void setBase(String base) {
        this.base = base;
    }

    @When("i want send request with date (.{10})$")
    public void setDate(String date) {
        this.date = date;
    }

    @Then("i have error for request latest ratest with base")
    public void i_have_response_with_base(List<List<String>> error) {
        new FixerRequest().getLatest(null, base)
                .then()
                .body("success", equalTo(false))
                .body("error.code", equalTo(Integer.parseInt(error.get(0).get(0)))) //Спорное решение парсить в int, но пока не умею приводить данные в Rest Assured
                .body("error.type", equalTo(error.get(0).get(1)));
    }

    @Then("i have error for request historical ratest with base")
    public void i_have_historical_response(List<List<String>> error) {
        new FixerRequest().getDate(date, null, base)
                .then()
                .body("success", equalTo(false))
                .body("error.code", equalTo(Integer.parseInt(error.get(0).get(0)))) //Спорное решение парсить в int, но пока не умею приводить данные в Rest Assured
                .body("error.type", equalTo(error.get(0).get(1)));
    }

    @Then("i have without key response")
    public void request_without_key(List<List<String>> error) {
        new FixerRequest().getCustomKey("")
                .then()
                .body("success", equalTo(false))
                .body("error.code", equalTo(Integer.parseInt(error.get(0).get(0)))) //Спорное решение парсить в int, но пока не умею приводить данные в Rest Assured
                .body("error.type", equalTo(error.get(0).get(1)))
                .body("error.info", equalTo(error.get(0).get(2)));
    }
}
