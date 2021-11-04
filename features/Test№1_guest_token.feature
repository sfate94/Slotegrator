Feature: Getting token for guest

    Scenario: Getting token for guest
        Given the "Content-Type" request header is "application/json"
        And the "Authorization" request header is "Basic ZnJvbnRfMmQ2YjBhODM5MTc0MmY1ZDc4OWQ3ZDkxNTc1NWUwOWU6"
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
          "expires_in":"@regExp(/.*/)",
          "access_token":"@regExp(/.*/)"
        }
        """
