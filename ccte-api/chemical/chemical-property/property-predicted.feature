@smoke
@all
@chemical
Feature: Feature file for chemical property resource (predicted)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

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

