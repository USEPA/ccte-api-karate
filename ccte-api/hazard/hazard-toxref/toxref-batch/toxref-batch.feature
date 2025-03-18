@smoke
Feature: Feature file for hazard toxref data endpoints
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for toxref data by batch dtxsids
    Given url ccte + "/hazard/toxref/search/by-dtxsid/"
    And request ["DTXSID5034307","DTXSID2040363"]
    When method POST
    Then status 200
