@smoke
@all
@hazard
Feature: Feature file for hazard toxref observation endpoints
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for toxref observations by dtxsid
    Given path '/hazard/toxref/observations/search/by-dtxsid/DTXSID9020112'
    When method GET
    Then status 200

  Scenario: Testing the GET method for toxref observations by study id
    Given path '/hazard/toxref/observations/search/by-study-id/2122'
    When method GET
    Then status 200
  @ignore
  Scenario: Testing the GET method for toxref observations by study type (paging)
    Given path '/hazard/toxref/observations/search/by-study-type/CHR'
    When method GET
    Then status 200
