@smoke
@all
@chemical
Feature: Feature file for chemical list resource with projection chemicallistwithdtxsids

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for public lists by type (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-type/state'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by name (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-name/SCILGREYSQUARE'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200

  Scenario: Testing the GET method for attributes of public lists by dtxsid (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200

