Feature: Feed Back

    Scenario: User doesn't provide any details
      Given I do not exist as a user
      When I sign in with valid credentials
      Then I see an invalid login message
        And I should be signed out