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
    * def chemicalListWithDtxsidsSchema = {id : '#present', type : '#present', label : '#present', longDescription : '#present', dtxsids : '#present', listName : '#present', chemicalCount : '#present', updatedAt : '#present', shortDescription : '#present'}

  Scenario: Validating response of the GET method for public list information by type if it contains dtxsids (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match each response == chemicalListWithDtxsidsSchema

  Scenario: Validating response of the GET method for public list information by name if it contains dtxsids (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-name/FCCmigex'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match response == chemicalListWithDtxsidsSchema

  Scenario: Validating response of the GET method for all public lists that contain dtxsids (projection = chemicallistwithdtxsids)
    # this is a LOT of data so we increased the read timeout accordingly
    * configure readTimeout = 120000
    Given url ccte + "/chemical/list/all"
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match each response == chemicalListWithDtxsidsSchema
