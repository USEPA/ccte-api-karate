@regression
@contracts
@hazard
@all
Feature: Feature file for validating the response of the IRIS resource
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for IRIS data by dtxsid
    Given path '/hazard/iris/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {dtxsid: '#present', chemicalName: '#present', casrn: '#present', lastSignificantRevision: '#present', literatureScreeningReview: '#present', criticalEffectsSystems: '#present', rfdChronic: '#present', rfdSubchronic: '#present', rfcChronic: '#present', rfcSubchronic: '#present', tumorSite: '#present', irisUrl: '#present'}
