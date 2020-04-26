@cases
Feature: Add a client

  Scenario: Add a client
    Given I log into the cases system successfully
    When I Add a client by filling relevant details
    Then I the client is added successfully

