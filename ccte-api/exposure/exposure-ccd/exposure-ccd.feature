@smoke
@all
@exposure
Feature: Feature file for CCD exposure resources

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical weight fraction records by dtxsid
    Given path '/exposure/ccd/chem-weight-fractions/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for general use keywords by dtxsid
    Given path '/exposure/ccd/keywords/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for product use category by dtxsid
    Given path '/exposure/ccd/puc/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for reported functional use records by dtxsid
    Given path '/exposure/ccd/functional-use/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for biomonitoring data by dtxsid (NHANES Inferences)
    Given path '/exposure/ccd/monitoring-data/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    
  Scenario: Testing the GET method for biomonitoring data by dtxsid (NHANES Inferences) with projection (ccd-biomonitoring)
    Given path '/exposure/ccd/monitoring-data/search/by-dtxsid/DTXSID7020182'
    And param projection = 'ccd-biomonitoring'
    When method GET
    Then status 200

  Scenario: Testing the GET method for production volume data by dtxsid 
    Given path '/exposure/ccd/production-volume/search/by-dtxsid/DTXSID0020232'
    When method GET
    Then status 200
