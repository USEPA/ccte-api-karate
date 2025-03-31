@smoke
@all
@hazard
Feature: Feature file for hazard pprtv chemical endpoints
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for pprtv chemical data by dtxsid
    Given path '/hazard/pprtv/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
