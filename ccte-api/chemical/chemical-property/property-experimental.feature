@smoke
@all
@chemical
Feature: Feature file for chemical property resource (experimental)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for property ids by type (experimental)
    Given path '/chemical/property/experimental/name'
    When method GET
    Then status 200

  Scenario: Testing the GET method for property by given property id and its value range (experimental)
    Given path '/chemical/property/experimental/search/by-range/Melting Point/150/151'
    When method GET
    Then status 200

  Scenario: Testing the GET method for property by dtxsid (experimental)
    Given path '/chemical/property/experimental/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the POST method for chemical properties by batch dtxsid (experimental)
    Given url ccte + "/chemical/property/experimental/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
