Feature: Find an added client

  Scenario: I can find an added client
    Given I log into the cases system successfully
    When I search for an existing client on homepage
    Then I can find the clients details successfully
    And  I can also find details of a client added recently


