Feature: Getting token for guest

    Scenario: Getting token for guest
        Given the "Content-Type" request header is "application/json"
        And I am authenticating as 'someclient' with password 'anditssecret'
        And the request body is:
        """
        {
          "grant_type":"client_credentials",
          "scope":"guest:default"
        }
        """
        When I request "http://test-api.d6.dev.devcaz.com/v2/oauth2/token" using HTTP "POST"
        Then the response code is "200"
        And the response body contains JSON:
        """
        {
          "token_type":"Bearer",
          "expires_in":3600,
          "access_token":"2YotnFZFEjr1zCsicMWpAA",
          "refresh_token":"def50200fcc006121b6a068eced57
        }
        """
