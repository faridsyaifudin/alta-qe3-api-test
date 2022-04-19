package api.stepdef;

import api.service.reqresin.Reqresin;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;

public class ReqresinStepDef {

    Reqresin reqresin = new Reqresin();

    // Action

    @And("user send PUT Update request to reqresin")
    public void putUpdate() {
        reqresin.putUpdate();
    }

    @And("user send POST login request to reqresin")
    public void postLogin() {
        reqresin.postLogin();
    }

    @And("user send GET Users request to reqresin")
    public void getUsers() {
        reqresin.getListUser();
    }

    @When("user send POST login request to reqresin with body json {string}")
    public void userSendPostLoginRequestToReqresinWithBodyJson(String jsonPath) {
        reqresin.postLoginWithParam(jsonPath);
    }

    @When("user send GET Single request to reqresin with body json {string}")
    public void userSendGETSingleRequestToReqresinWithBodyJson(String jsonPath) {
        reqresin.getSingleRequestWithParam(jsonPath);
    }

    @When("user send POST create request to reqresin")
    public void postCreate() { reqresin.postCreate();
    }
}
