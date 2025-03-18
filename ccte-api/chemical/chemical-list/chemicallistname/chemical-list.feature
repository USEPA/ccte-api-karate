@smoke
Feature: Feature file for chemical list resource with projection chemicallistname

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for public lists by type (projection = chemicallistname)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by name (projection = chemicallistname)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by dtxsid (projection = chemicallistname)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200

  Scenario: Testing the GET method for all public lists (projection = chemicallistname)
    Given url ccte + "/chemical/list/"
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
