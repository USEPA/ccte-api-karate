@regression
@contracts
Feature: Feature file for validating the responses of the cancer summary resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for cancer summary data by dtxsid
    Given path '/hazard/cancer-summary/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', source: '#present', url: '#present', cancerCall: '#present', dtxsid: '#present', exposureRoute: '#present'}

  Scenario: Testing the POST method for cancer summary data by batch dtxsid
    Given url ccte + "/hazard/cancer-summary/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', source: '#present', url: '#present', cancerCall: '#present', dtxsid: '#present', exposureRoute: '#present'}
