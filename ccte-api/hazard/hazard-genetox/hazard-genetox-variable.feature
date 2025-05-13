@regression
@contracts
@hazard
@all
Feature: Feature file for validating the responses of the genetox resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  ############ Summary ############

  Scenario: Validating the response of the GET method for genetox summary data by dtxsid
    Given path '/hazard/genetox/summary/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200
    And match response == [{id: '#present', ames: '#present', clowderDocId: '#present', dtxsid: '#present', genetoxCall: '#present', genetoxSummaryId: '#present', micronucleus: '#present', reportsNegative: '#present', reportsOther: '#present', reportsPositive: '#present'}]

  Scenario: Validating the response of the POST method for genetox summary data by batch dtxsid
    Given url ccte + "/hazard/genetox/summary/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
     And match response[0] == {id: '#present', ames: '#present', clowderDocId: '#present', dtxsid: '#present', genetoxCall: '#present', genetoxSummaryId: '#present', micronucleus: '#present', reportsNegative: '#present', reportsOther: '#present', reportsPositive: '#present'}
   
  ############ Detail ############

  Scenario: Validating the response of the GET method for genetox detail data by dtxsid
    Given path '/hazard/genetox/details/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200
    And match response[0] == {year: '#present', source: '#present', dtxsid: '#present', species: '#present', assayCategory: '#present', assayResult: '#present', assayType: '#present', metabolicActivation: '#present', strain: '#present'}

  Scenario: Validating the response of the POST method for genetox detail data by batch dtxsid
    Given url ccte + "/hazard/genetox/details/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {year: '#present', source: '#present', dtxsid: '#present', species: '#present', assayCategory: '#present', assayResult: '#present', assayType: '#present', metabolicActivation: '#present', strain: '#present'}
  Scenario: Validating the response of the GET method for genetox detail data by dtxsid (projection = ccd-genetox-details)
    Given path '/hazard/genetox/details/search/by-dtxsid/DTXSID0021125'
    And param projection = 'ccd-genetox-details'
    When method GET
    Then status 200
    And match response[0] == {year: '#present', source: '#present', dtxsid: '#present', species: '#present', assayCategory: '#present', assayResult: '#present', assayType: '#present', metabolicActivation: '#present', strain: '#present'}
