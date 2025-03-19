@smoke
@all
@hazard
Feature: Feature file for hazard toxref effects endpoints
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for toxref effects by dtxsid
    Given path '/hazard/toxref/effects/search/by-dtxsid/DTXSID9020112'
    When method GET
    Then status 200

  Scenario: Testing the GET method for toxref effects by study id
    Given path '/hazard/toxref/effects/search/by-study-id/2122'
    When method GET
    Then status 200
  @ignore
  Scenario: Testing the GET method for toxref effects by study type (paging)
    Given path '/hazard/toxref/effects/search/by-study-type/CHR'
    When method GET
    Then status 200
