Feature: Register a new player

     Scenario: Correct register a new player
         Given the "Content-Type" request header is "application/json"
         And I am authenticating as 'someclient' with password 'anditssecret'
         And the request body is:
         """
         {
            "username": "janedoe",
            "password_change": "amFuZWRvZTEyMw==",
            "password_repeat": "amFuZWRvZTEyMw==",
            "email": "janedoe@example.com",
            "name": "Jane",
            "surname": "Doe",
            "currency_code": “EUR"
         }
         """
         When I request "http://test-api.d6.dev.devcaz.com/v2/players" using HTTP "POST"
         Then the response code is "200"
         And the response body contains JSON:
         """
         {
            "id": 1,
            "country_id": null,
            "timezone_id": null,
            "username": "johndoe",
            "email": janedoe@example.com,
            "name": "John",
            "surname": "Doe",
            "gender": null,
            "phone_number": null,
            "birthdate": null,
            "bonuses_allowed": true,
            "is_verified": false
         }
         """