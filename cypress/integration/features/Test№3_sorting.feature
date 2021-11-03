Feature: Sorting

    Scenario: I try to sort player list
        Given I open "Casino" "Login" page
        When I enter validLogin to "Login"
        And I enter validPassword to "Password"
        And I press the "Sign in" button
        And I open a player list
        And I sort a player list by name "Test"
        Then I should see correct sort
        And Url should be correct