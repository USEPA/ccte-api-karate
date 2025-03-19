@regression
@contracts
@all
@exposure
Feature: Feature file for validating responses of exposure httk resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey


  Scenario: Testing the GET method for seems demo by dtxsid
    Given path '/exposure/httk/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200 
    And match response[0] == {id: '#present', dtxsid: '#present', parameter: '#present', measuredText: '#present', measured: '#present', predictedText: '#present', predicted: '#present', units: '#present', model: '#present', reference: '#present', percentile: '#present', species: '#present', dataSourceSpecies: '#present', dataVersion: '#present', importDate: '#present'}
