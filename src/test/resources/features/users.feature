Feature: Reqres.in

  Background: User Already on Reqres.in

@Positive
Scenario: User successfully PUT update
When User send PUT update HTTP request to reqresin
Then response status code should be 200
And response status should match with schema "Update.json"

@Positive
Scenario: User successfully Delete data
When User send Delete data HTTP request to reqresin
Then response status code should be 204





