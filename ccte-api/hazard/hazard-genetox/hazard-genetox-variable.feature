@regression
@contracts
Feature: Feature file for validating the responses of the genetox resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for genetox summary data by dtxsid
    Given path '/hazard/genetox/summary/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', reportsPositive: '#present', reportsNegative: '#present', reportsOther: '#present', ames: '#present', micronucleus: '#present', dtxsid: '#present'}

  Scenario: Testing the POST method for genetox summary data by batch dtxsid
    Given url ccte + "/hazard/genetox/summary/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', reportsPositive: '#present', reportsNegative: '#present', reportsOther: '#present', ames: '#present', micronucleus: '#present', dtxsid: '#present'}

  Scenario: Testing the GET method for genetox detail data by dtxsid
    Given path '/hazard/genetox/details/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', year: '#present', source: '#present', assayCategory: '#present', assayType: '#present', metabolicActivation: '#present', assayResult: '#present', dtxsid: '#present', species: '#present', strain: '#present'}

  Scenario: Testing the POST method for genetox detail data by batch dtxsid
    Given url ccte + "/hazard/genetox/details/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', year: '#present', source: '#present', assayCategory: '#present', assayType: '#present', metabolicActivation: '#present', assayResult: '#present', dtxsid: '#present', species: '#present', strain: '#present'}
