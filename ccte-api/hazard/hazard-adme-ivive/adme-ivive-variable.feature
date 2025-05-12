@regression
@contracts
@hazard
@all
Feature: Feature file for validating the response of the ADME-IVIVE resource
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for ADME-IVIVE data by dtxsid
    Given path '/hazard/adme-ivive/search/by-dtxsid/DTXSID8033649'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', description: '#present', measured: '#present', predicted: '#present', unit: '#present', model: '#present', reference: '#present', percentile: '#present', species: '#present', dataSourceSpecies: '#present'}

  Scenario: Validating the response of the GET method for ADME-IVIVE data by dtxsid
    Given path '/hazard/adme-ivive/search/by-dtxsid/DTXSID8033649'
    And param projection = 'ccd-adme-data'
    When method GET
    Then status 200
    And match response[0] == {reference: '#present', description: '#present', label: '#present', model: '#present', dtxsid: '#present', measured: '#present', predicted: '#present', unit: '#present', percentile: '#present', species: '#present', dataSourceSpecies: '#present'}
