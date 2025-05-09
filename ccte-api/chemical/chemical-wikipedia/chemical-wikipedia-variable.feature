@regression
@contracts
@chemical
@all
Feature: Feature file for chemical wikipedia resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical safety data from wikipedia by dtxsid
    Given path '/chemical/wikipedia/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response == {dtxsid: '#present', safetyUrl: '#present'}

  Scenario: Testing the POST method for chemical safety data from wikipedia by batch dtxsid
    Given url ccte + "/chemical/wikipedia/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {dtxsid: '#present', safetyUrl: '#present'}
