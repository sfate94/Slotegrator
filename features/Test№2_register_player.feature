Feature: Register a new player

     Scenario: Correct register a new player
         Given the "Content-Type" request header is "application/json"
         And the "Authorization" request header is "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImZlZTVmM2VkY2Y3MjlkNjQyZjBmNjA0NDA4ZGRkZWJjNmI5ZWFiZTE0NDE1MWM3NzY1ZDNmZGVlMmE2ZThjMTVlMjE5MjMxOTljOWJhZDJkIn0.eyJhdWQiOiJmcm9udF8yZDZiMGE4MzkxNzQyZjVkNzg5ZDdkOTE1NzU1ZTA5ZSIsImp0aSI6ImZlZTVmM2VkY2Y3MjlkNjQyZjBmNjA0NDA4ZGRkZWJjNmI5ZWFiZTE0NDE1MWM3NzY1ZDNmZGVlMmE2ZThjMTVlMjE5MjMxOTljOWJhZDJkIiwiaWF0IjoxNjM2MDE0NjI3LCJuYmYiOjE2MzYwMTQ2MjcsImV4cCI6MTYzNjEwMTAyNywic3ViIjoiIiwic2NvcGVzIjpbImd1ZXN0OmRlZmF1bHQiXX0.HndomB4ljMnbzCnXt2nBNRQ-ffG7IFVmrSl0SscE-oR9Sj7s-TWtguartngSqtASXrUW36OYiJn0EdTnBSuEKC6ZifydL2onqsccvfrU52HZLp5TWjPetvUAx_GMaZP4-54gDQmABvsYwpY0HMuHCLTH6bO-ZZNbV8R6eQSclx8"
         And the request body is:
         """
         {
            "username": "sfaterfdgrgrgrgefrgrg",
            "password_change": "bmFnb3JueTE=",
            "password_repeat": "bmFnb3JueTE=",
            "email": "sfareerefetgrgggr@rambler.ru",
            "name": "Artem",
            "surname": "Nagorny",
            "currency_code": "RUB"
         }
         """
         When I request "http://test-api.d6.dev.devcaz.com/v2/players" using HTTP "POST"
         Then the response code is "201"
         And the response body contains JSON:
         """
         {
            "id": "@regExp(/.*/)",
            "country_id": null,
            "timezone_id": null,
            "username": "@regExp(/.*/)",
            "email": "@regExp(/.*/)",
            "name": "Artem",
            "surname": "Nagorny",
            "gender": null,
            "phone_number": null,
            "birthdate": null,
            "bonuses_allowed": true,
            "is_verified": false
         }
         """