@smoke
@all
@chemical
Feature: Feature file for chemical search resource (starting value)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical search by starting value of chemical name
    Given path '/chemical/search/start-with/atraz'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by starting part of dtxsid
    Given path '/chemical/search/start-with/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by starting part of dtxcid
    Given path '/chemical/search/start-with/DTXCID505'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by starting part of InChIKey
    Given path '/chemical/search/start-with/MXWJVTOOROXGIU'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by starting part of CASRN
    Given path '/chemical/search/start-with/1912-24-9'
    When method GET
    Then status 200
