@smoke
@chemical
@all
Feature: Feature file for chemical property resource (summary)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

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
