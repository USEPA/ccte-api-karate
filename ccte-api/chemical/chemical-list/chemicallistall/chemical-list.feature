@smoke
@all
@chemical
Feature: Feature file for chemical list resource with projection chemicallistall

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for public lists by type (projection = chemicallistall)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by name (projection = chemicallistall)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by dtsxid (projection = chemicallistall)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for all public lists (projection = chemicallistall)
    Given url "https://api-ccte.epa.gov/chemical/list/"
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
