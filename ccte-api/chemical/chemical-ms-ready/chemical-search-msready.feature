@smoke
Feature: Feature file for chemical search resource (ms ready)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for ms ready chemical using mass range
    Given path '/chemical/msready/search/by-mass/200.9/200.95'
    When method GET
    Then status 200

  Scenario: Testing the POST method for ms ready chemical using mass range
    Given url ccte + "/chemical/msready/search/by-mass/"
    And request {"masses": [12,16.1], "error": 2}
    When method POST
    Then status 200

  Scenario: Testing the GET method for ms ready chemical by formula
    Given path '/chemical/msready/search/by-formula/C16H24N2O5S'
    When method GET
    Then status 200

  Scenario: Testing the GET method for ms ready chemical by DTXCID
    Given path '/chemical/msready/search/by-dtxcid/DTXCID30182'
    When method GET
    Then status 200
