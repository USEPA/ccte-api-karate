@smoke
@all
@chemical
Feature: Feature file for chemical ghslink resource. Finding chemical safety data by dtxsid

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for gshlink chemical safety data
    Given path '/chemical/ghslink/to-dtxsid/DTXSID001000314'
    When method GET
    Then status 200

  Scenario: Testing the POST method for chemicals by listname
    Given url ccte + "/chemical/ghslink/to-dtxsid/"
    And request '["DTXSID90632430", "DTXSID001000314", "DTXSID001000326"]'
    When method POST
    Then status 200

