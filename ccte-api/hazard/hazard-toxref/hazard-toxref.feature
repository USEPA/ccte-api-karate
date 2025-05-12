@smoke
@hazard
@all
Feature: Feature file for toxref resources

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey
    
  ############ Data ############

  Scenario: Testing the GET method for toxref data by dtxsid
    Given path '/hazard/toxref/data/search/by-dtxsid/DTXSID9020112'
    When method GET
    Then status 200

  Scenario: Testing the GET method for toxref data by study id
    Given path '/hazard/toxref/data/search/by-study-id/2122'
    When method GET
    Then status 200

  Scenario: Testing the GET method for toxref data by study type (paging)
    Given path '/hazard/toxref/data/search/by-study-type/CHR'
    When method GET
    Then status 200

  ############ Effects ############

  Scenario: Testing the GET method for toxref effects by dtxsid
    Given path '/hazard/toxref/effects/search/by-dtxsid/DTXSID9020112'
    When method GET
    Then status 200

  Scenario: Testing the GET method for toxref effects by study id
    Given path '/hazard/toxref/effects/search/by-study-id/2122'
    When method GET
    Then status 200

  Scenario: Testing the GET method for toxref effects by study type (paging)
    Given path '/hazard/toxref/effects/search/by-study-type/CHR'
    When method GET
    Then status 200

  ############ Observations ############

  Scenario: Testing the GET method for toxref observations by dtxsid
    Given path '/hazard/toxref/observations/search/by-dtxsid/DTXSID9020112'
    When method GET
    Then status 200

  Scenario: Testing the GET method for toxref observations by study id
    Given path '/hazard/toxref/observations/search/by-study-id/2122'
    When method GET
    Then status 200

  Scenario: Testing the GET method for toxref observations by study type (paging)
    Given path '/hazard/toxref/observations/search/by-study-type/CHR'
    When method GET
    Then status 200

  ############ Summary ############

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

  ############ Batch ############

  Scenario: Testing the GET method for toxref data by batch dtxsids
    Given url ccte + "/hazard/toxref/search/by-dtxsid/"
    And request ["DTXSID5034307","DTXSID2040363"]
    When method POST
    Then status 200
