@regression
Feature: Feature file for chemical property resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validate the response of the GET method for chemical properties by id and range
    Given path '/chemical/property/search/by-range/melting-point/150/151'
    When method GET
    Then status 200
    And match response == {}
