Feature: Player list

    Scenario: I try to get player list
        Given I open "Casino" "Login" page
        When I enter validLogin to "Login"
        And I enter validPassword to "Password"
        And I press the "Sign in" button
        And I open a player list
        Then I should see correct player list
