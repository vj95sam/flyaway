package restassured;

import org.testng.annotations.Test;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

public class Bokked {

	@Test  
	
	public void Flyawaya1() {
		String url = "http://localhost:9010/FlyAway/memberbookings";
		RestAssured.baseURI= url;
		
		RequestSpecification requestSpecification1= RestAssured.given();
		Response response1 = requestSpecification1.accept(ContentType.JSON).get();
		System.out.println(response1.asPrettyString());
}
}
 