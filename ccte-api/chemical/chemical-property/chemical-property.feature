@smoke
@chemical
@all
Feature: Feature file for chemical property resource 

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

  Scenario: Testing the GET method for chemical properties by dtxsid (fate)
    Given path '/chemical/fate/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the POST method for chemical properties by batch dtxsid (fate)
    Given url ccte + "/chemical/fate/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200

  Scenario: Testing the GET method for property ids by type (predicted)
    Given path '/chemical/property/predicted/name'
    When method GET
    Then status 200

  Scenario: Testing the GET method for property by given property id and its value range (predicted)
    Given path '/chemical/property/predicted/search/by-range/Melting Point/150/151'
    When method GET
    Then status 200

  Scenario: Testing the GET method for property by dtxsid (predicted)
    Given path '/chemical/property/predicted/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the POST method for chemical properties by batch dtxsid (predicted)
    Given url ccte + "/chemical/property/predicted/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200

  Scenario: Testing the GET method for property by dtxsid (summary)
    Given path '/chemical/property/summary/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for property by dtxsid and property name (summary)
    Given url ccte + "/chemical/property/summary/search/"
    And param dtxsid = 'DTXSID7020182'
    And param propName = 'Density'
    When method GET
    Then status 200

