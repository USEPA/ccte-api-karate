@smoke
@all
@chemical
Feature: Feature file for chemical property resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical properties by id and range
    Given path '/chemical/property/search/by-range/density/1.311/1.313'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical properties by dtxsid
    Given path '/chemical/property/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the POST method for chemical properties by batch dtxsid
    Given url ccte + "/chemical/property/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
