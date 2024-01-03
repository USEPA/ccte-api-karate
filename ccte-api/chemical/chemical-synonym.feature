@smoke
Feature: Feature file for chemical synonym

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical synonym by dtxsid
    Given path '/chemical/synonym/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
