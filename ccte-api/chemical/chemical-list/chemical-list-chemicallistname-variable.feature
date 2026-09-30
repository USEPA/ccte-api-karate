@regression
@contract
@chemical
@all
Feature: Feature file for validating the response of the chemical list resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey
    * def chemicalListNameSchema = {listName: '#present'}

  Scenario: Validating response of the GET method for public list names by type (projection = chemicallistname)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match each response == chemicalListNameSchema

  Scenario: Validating response of the GET method for public list names by dtxsid (projection = chemicallistname)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match each response == chemicalListNameSchema

  Scenario: Validating response of the GET method for all public list names (projection = chemicallistname)
    Given url ccte + "/chemical/list/all"
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match each response == chemicalListNameSchema
