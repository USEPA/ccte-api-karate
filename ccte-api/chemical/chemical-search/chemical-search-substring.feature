@smoke
@all
@chemical
Feature: Feature file for chemical search resource (substring)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical search by substring of chemical name
    Given path '/chemical/search/contain/chloropyrazine'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by substring of dtxsid
    Given path '/chemical/search/contain/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by substring of dtxcid
    Given path '/chemical/search/contain/DTXCID505'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by substring of InChIKey
    Given path '/chemical/search/contain/MXWJVTOOROXGIU'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by substring of CASRN
    Given path '/chemical/search/contain/1912-24'
    When method GET
    Then status 200
