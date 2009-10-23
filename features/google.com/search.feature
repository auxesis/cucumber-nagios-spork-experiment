Feature: google.com
  It should be up

  Scenario: Visiting home page
    When I go to http://google.com
    Then the request should succeed

