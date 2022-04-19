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

#teguh
  @positive @get-single
  Scenario: Success GET single resource
    When user send GET Single request to reqresin with body json "success-get.json"
    Then response status code should be 201

  @post-create
  Scenario: Success POST create
    When user send POST create request to reqresin
    Then response status code should be 201
    And response structure should match json schema "create.json"

  @negative @post-login
  Scenario: Failed POST login
    When user send POST login request to reqresin with body json "failed-login.json"
    Then response status code should be 400