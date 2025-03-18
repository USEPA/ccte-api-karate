@smoke
Feature: Feature file for hazard toxvaldb endpoints
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for toxval data by dtxsid
    Given path '/hazard/toxval/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the POST method for toxval by batch dtxsids
    Given url ccte + "/hazard/toxval/search/by-dtxsid/"
    And request ["DTXSID7020182","DTXSID9020112"]
    When method POST
    Then status 200
