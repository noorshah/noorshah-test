@cases
Feature: Find an existing client and verify details of a newly added client

  Scenario: I can find an existing client
    Given I log into the cases system successfully
    When I search for an existing client on homepage
    Then I can find the clients details successfully
    And I sign out of cases system


   Scenario: Add a client and search and verify details
     Given I log into the cases system successfully
     When I add a client by filling relevant details
     Then I can I search for that client and verify details
     And I sign out of cases system

     Scenario:  I cannot find a client that does not exist
       Given I log into the cases system successfully
       When I attempt to find a non existant client
       Then I get an error 'No matches found'





