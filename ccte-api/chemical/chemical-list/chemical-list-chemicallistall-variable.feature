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
    * def chemicalListAllSchema = {id : '#present', type : '#present', label : '#present', longDescription : '#present', listName : '#present', chemicalCount : '#present', updatedAt : '#present', shortDescription : '#present'}

  Scenario: Validating response of the GET method for public list information by type (projection = chemicallistall)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
    And match each response == chemicalListAllSchema

  Scenario: Validating response of the GET method for public list information by name (projection = chemicallistall)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
    And match response == chemicalListAllSchema

  Scenario: Validating response of the GET method for public list information by dtxsid (projection = chemicallistall)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
    And match each response == chemicalListAllSchema

  Scenario: Validating response of the GET method for information of all public lists (projection = chemicallistall)
    Given path '/chemical/list/all'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
    And match each response == chemicalListAllSchema
