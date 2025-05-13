@regression
@contracts
@hazard
@all
Feature: Feature file for validating the response of the HAWC resource
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for HAWC data by dtxsid
    Given path '/hazard/hawc/search/by-dtxsid/DTXSID4023886'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', name: '#present', year: '#present', dtxsid: '#present', ccdUrl: '#present', hawcUrl: '#present'}
