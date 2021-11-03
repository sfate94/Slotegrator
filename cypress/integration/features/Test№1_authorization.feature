Feature: Authorization in the admin panel

    Scenario Outline: I try to authorization in the admin panel
        Given I open "Casino" "Login" page
        When I enter <Login> to "Login"
        And I enter <Password> to "Password"
        And I press the "Sign in" button
        Then I should see "<Result>"
        Examples:
            | Login        | Password        | Result                 |
            | validLogin   | validPassword   | correctAuthorization   |
            | invalidLogin | validPassword   | unCorrectAuthorization |
            | validLogin   | invalidPassword | unCorrectAuthorization |
            | invalidLogin | invalidPassword | unCorrectAuthorization |