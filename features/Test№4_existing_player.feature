Feature: Getting profile data of an existing player

    Scenario: Getting profile data of an existing player
        Given the "Authorization" request header is "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjgwMWU5OGRkOTk0MzdlYTZlZDk1NmFiODUyYzBhOTUyYzY1ZjExZGU3YTJhMmU1NTE1YzkwYWUwNGQ4YzBlZTk1NjMyNTQxODU0NmVjYTYzIn0.eyJhdWQiOiJmcm9udF8yZDZiMGE4MzkxNzQyZjVkNzg5ZDdkOTE1NzU1ZTA5ZSIsImp0aSI6IjgwMWU5OGRkOTk0MzdlYTZlZDk1NmFiODUyYzBhOTUyYzY1ZjExZGU3YTJhMmU1NTE1YzkwYWUwNGQ4YzBlZTk1NjMyNTQxODU0NmVjYTYzIiwiaWF0IjoxNjM2MDE1MzY0LCJuYmYiOjE2MzYwMTUzNjQsImV4cCI6MTYzNjEwMTc2NCwic3ViIjoiMTAzNTIiLCJzY29wZXMiOlsiYm9udXM6cmVhZCIsImdhbWU6cmVhZCIsImdhbWVfaGlzdG9yeTpyZWFkIiwiamFja3BvdDpyZWFkIiwicGF5bWVudDpyZWFkIiwicGxheWVyOnJlYWQiLCJ3aW5uZXI6cmVhZCIsImNhc2lubzpyZWFkIiwibWVzc2FnZTpyZWFkIiwiZmFxOnJlYWQiLCJsb3lhbHR5OnJlYWQiLCJnYW1lOndyaXRlIiwicGF5bWVudDp3cml0ZSIsInBsYXllcjp3cml0ZSIsIm1lc3NhZ2U6d3JpdGUiXX0.Gg4zYNCMvhW8Ac9-gnnS3YxV6WQbpBXgw2qhW3ypPww2VsanpKIcRysLXZFCrvU9ciNXnvnpxwef2YesFl1Jdjjb1cuWdIpu60nbE0p7M81E6vFumoldYvBQz78MEY2X4tZ_vFc4q9IFesgc8T3PZKa1i_HT0klcpY_CLDraPK0"
        When I request "http://test-api.d6.dev.devcaz.com/v2/players/8852" using HTTP "GET"
        Then the response code is "200"
        And the response body contains JSON:
         """
         {
            "id": 8852,
            "country_id": null,
            "timezone_id": null,
            "username": "artemnagorn",
            "email": "sfat@rambler.ru",
            "name": "Artem",
            "surname": "Nagorny",
            "gender": null,
            "phone_number": null,
            "birthdate": null,
            "bonuses_allowed": true,
            "is_verified": false
         }
         """