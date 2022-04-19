@reqresin @register @staging @ALTA-QE-3
Feature: Reqresin

  Scenario: Success GET users
    When user send GET Users request to reqresin
    Then response status code should be 200
    And response structure should match json schema "users.json"

  Scenario: Success POST login
    When user send POST login request to reqresin
    Then response status code should be 200
    And response structure should match json schema "login.json"

  Scenario: Success PUT update
    When user send PUT Update request to reqresin
    Then response status code should be 200
    And response structure should match json schema "update-user.json"

  Scenario: Success POST Register
    When user send POST Register Request to reqresin
    Then response status code should be 200
    And  response structure should match json schema "register.json"