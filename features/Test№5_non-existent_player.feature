Feature: Getting profile data of an non-existing player

  Scenario: Getting profile data of an non-existing player
    Given I am authenticating as 'someclient' with password 'anditssecret'
    When I request "http://test-api.d6.dev.devcaz.com/v2/players/2" using HTTP "GET"
    Then the response code is "404"
    And the response body contains JSON:
         """
         {
             "id": 1,
             "country_id": 1,
             "timezone_id": null,
             "username": "johndoe",
             "email": null,
             "name": "John",
             "surname": "Doe",
             "gender": "male",
             "phone_number": "+1234567891",
             "birthdate": "1950-01-01",
             "bonuses_allowed": true,
             "is_verified": true
         }
         """