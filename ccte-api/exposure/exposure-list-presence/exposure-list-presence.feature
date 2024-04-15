@smoke
Feature: Feature file for exposure list-presence resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for list prescence tags
    Given path '/exposure/list-presence/tags'
    When method GET
    Then status 200

  Scenario: Testing the GET method for list prescence by dtxsid
    Given path '/exposure/list-presence/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200 
