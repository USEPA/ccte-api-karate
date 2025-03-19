@smoke
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

  Scenario: Testing the POST method for chemical synonym by batch dtxsid
    Given url ccte + "/chemical/synonym/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
