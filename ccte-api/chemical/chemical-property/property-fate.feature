@smoke
@all
@chemical
Feature: Feature file for chemical property resource (fate)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey


  Scenario: Testing the GET method for chemical properties by dtxsid (fate)
    Given path '/chemical/fate/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the POST method for chemical properties by batch dtxsid (fate)
    Given url ccte + "/chemical/fate/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
