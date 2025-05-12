@smoke
@hazard
@all
Feature: Feature file for the ADME-IVIVE resource
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for ADME-IVIVE data by dtxsid
    Given path '/hazard/adme-ivive/search/by-dtxsid/DTXSID8033649'
    When method GET
    Then status 200

  Scenario: Testing the GET method for ADME-IVIVE data by dtxsid
    Given path '/hazard/adme-ivive/search/by-dtxsid/DTXSID8033649'
    And param projection = 'ccd-adme-data'
    When method GET
    Then status 200
