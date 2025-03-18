@smoke
@all
@chemical
Feature: Feature file for chemical file resource (mol)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for mol file by dtxsid
    Given path '/chemical/file/mol/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for mol file by dtxcid
    Given path '/chemical/file/mol/search/by-dtxcid/DTXCID505'
    When method GET
    Then status 200
