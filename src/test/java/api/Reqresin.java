package api;

import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import org.json.JSONObject;
import org.junit.Assert;

public class Reqresin {
    private static final String url = "https://reqres.in";
    public void PutUpdate() {
        JSONObject bodyJson = new JSONObject();
        bodyJson.put ("name", "morpheus");
        bodyJson.put ("job", "zion resident");

        SerenityRest.given()
                .header("Content-type", "application/json")
                .body(bodyJson.toString())
                .put(url + "/api/users/2");
    }
    public void DeleteData (){
        Response response = SerenityRest.delete(url + "/api/users/2");
        Assert.assertEquals(response.statusCode(), 204);
    }
}
