@regression
@contracts
@chemical
@all
Feature: Feature file for validating the response of the chemical synonym resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for chemical synonym by dtxsid
    Given path '/chemical/synonym/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response == {dtxsid: '#present', pcCode: '#present', valid: '#present', good: '#present', deletedCasrn: '#present', other: '#present', beilstein: '#present', alternateCasrn: '#present'}

  Scenario: Validating the response of the POST method for chemical synonym by dtxsid
    Given url ccte + "/chemical/synonym/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {dtxsid: '#present', pcCode: '#present', valid: '#present', good: '#present', deletedCasrn: '#present', other: '#present', beilstein: '#present', alternateCasrn: '#present'}
