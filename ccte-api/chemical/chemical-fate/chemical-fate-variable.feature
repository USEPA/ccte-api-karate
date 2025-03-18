@regression
@contracts
@all
@chemical
Feature: Feature file for validating the chemical fate resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of  the GET method for chemical fate by dtxsid
    Given path '/chemical/fate/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', description: '#present', valueType: '#present', dtxsid: '#present', dtxcid: '#present', endpointName: '#present', resultValue: '#present', maxValue: '#present', minValue: '#present', modelSource: '#present', unit: '#present'}

  Scenario: Validating the response of the POST method for chemical fate by batch dtxsid
    Given url ccte + "/chemical/fate/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', description: '#present', valueType: '#present', dtxsid: '#present', dtxcid: '#present', endpointName: '#present', resultValue: '#present', maxValue: '#present', minValue: '#present', modelSource: '#present', unit: '#present'}
