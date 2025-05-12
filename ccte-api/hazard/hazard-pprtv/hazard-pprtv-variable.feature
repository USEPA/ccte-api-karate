@regression
@contracts
@hazard
@all
Feature: Feature file for validating the response of the PPRTV chemical endpoints
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for PPRTV chemical data by dtxsid
    Given path '/hazard/pprtv/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', pprtvSubstanceId: '#present', name: '#present', casrn: '#present', lastReviosn: '#present', pprtvAssessment: '#present', irisLink: '#present', rfcValue: '#present', rfdValue: '#present', woe: '#present'}
