@smoke
@all
@hazard
Feature: Feature file for hazard toxref summary endpoints
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for toxref summary by dtxsid
    Given path '/hazard/toxref/summary/search/by-dtxsid/DTXSID9020112'
    When method GET
    Then status 200

  Scenario: Testing the GET method for toxref summary by study id
    Given path '/hazard/toxref/summary/search/by-study-id/2122'
    When method GET
    Then status 200

  Scenario: Testing the GET method for toxref summary by study type
    Given path '/hazard/toxref/summary/search/by-study-type/DEV'
    When method GET
    Then status 200
