@cases
Feature: Add a client

  Scenario: Add a client
    Given I log into the cases system successfully
    When I add a client by filling relevant details
    Then I the client is added successfully
    And I sign out of cases system

