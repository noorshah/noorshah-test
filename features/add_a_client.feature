@cases
Feature: Add a client by filling out all mandatory and optional fields

  Scenario: Add a client
    Given I log into the cases system successfully
    When I add a client by filling relevant details
    Then I the client is added successfully
    And I sign out of cases system

  Scenario: I cannot add an existing client
    Given I log into the cases system successfully
    When I submit details of an existing client
    Then I get existing client error
    And I sign out of cases system

