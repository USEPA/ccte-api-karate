@regression
@contracts
@all
@chemical
Feature: Feature file for chemical synonym

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical synonym by dtxsid
    Given path '/chemical/synonym/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response == {pcCode: '#present', other: '#present', beilstein: '#present', alternateCasrn: '#present', valid: '#present', good: '#present', deletedCasrn: '#present', dtxsid: '#present'}
