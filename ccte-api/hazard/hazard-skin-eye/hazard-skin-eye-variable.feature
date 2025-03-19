@regression
@contracts
@all
@hazard
Feature: Feature file for validating the responses of the skin eye resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for skin eye data by dtxsid
    Given path '/hazard/skin-eye/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', year: '#present', source: '#present', dtxsid: '#present', endpoint: '#present', classification: '#present', guideline: '#present', reliability: '#present', resultText: '#present', score: '#present', species: '#present', studyType: '#present', strain: '#present'}

  Scenario: Testing the POST method for skin eye data by batch dtxsid
    Given url ccte + "/hazard/skin-eye/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', year: '#present', source: '#present', dtxsid: '#present', endpoint: '#present', classification: '#present', guideline: '#present', reliability: '#present', resultText: '#present', score: '#present', species: '#present', studyType: '#present', strain: '#present'}
