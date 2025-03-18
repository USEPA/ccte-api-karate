@regression
@contracts
@all
@chemical
Feature: Feature file for chemical list resource with projection chemicallistwithdtxsids

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for attributes of public lists by type (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-type/state'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', type: '#present', label: '#present', visibility: '#present', longDescription: '#present', dtxsids: '#present', chemicalCount: '#present', createdAt: '#present', updatedAt: '#present', listName: '#present', shortDescription: '#present'}

  Scenario: Validating the response of the GET method for attributes of public lists by name (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-name/SCILGREYSQUARE'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match response == {id: '#present', type: '#present', label: '#present', visibility: '#present', longDescription: '#present', dtxsids: '#present', chemicalCount: '#present', createdAt: '#present', updatedAt: '#present', listName: '#present', shortDescription: '#present'}

  @ignore
  Scenario: Validating the response of the GET method for attributes of public lists by dtxsid (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', type: '#present', label: '#present', visibility: '#present', longDescription: '#present', dtxsids: '#present', chemicalCount: '#present', createdAt: '#present', updatedAt: '#present', listName: '#present', shortDescription: '#present'}
