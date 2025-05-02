@smoke
@hazard
@all
Feature: Feature file for hazard iris endpoints
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for iris data by dtxsid
    Given path '/hazard/iris/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
