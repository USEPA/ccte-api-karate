@regression
@contracts
@hazard
@all
Feature: Feature file for validating the responses of the skin eye resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for skin eye data by dtxsid
    Given path '/hazard/skin-eye/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', authority: '#present', classification: '#present', dtxsid: '#present', endpoint: '#present', glp: '#present', guideline: '#present', recordUrl: '#present', reliability: '#present', resultText: '#present', score: '#present', skinEyeHash: '#present', skinEyeId: '#present', skinEyeUuid: '#present', source: '#present', species: '#present', strain: '#present', studyType: '#present', year: '#present'}

  Scenario: Validating the response of the POST method for skin eye data by batch dtxsid
    Given url ccte + "/hazard/skin-eye/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', authority: '#present', classification: '#present', dtxsid: '#present', endpoint: '#present', glp: '#present', guideline: '#present', recordUrl: '#present', reliability: '#present', resultText: '#present', score: '#present', skinEyeHash: '#present', skinEyeId: '#present'
