@smoke
@all
@chemical
Feature: Feature file for chemical property model endpoints

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for Model reports by dtxsid
    Given path '/chemical/property/model/reports/search/by-dtxsid/DTXSID7020005'
    When method GET
    Then status 200

  Scenario: Testing the GET method for HTML strings of Model reports by dtxsid and modelId
    Given url ccte + "/chemical/property/model/reports/html/search/"
    And param dtxsid = 'DTXSID7020005'
    And param modelId = '1163'
    When method GET
    Then status 200

  Scenario: Testing the GET method for HTML strings of Model reports by dtxsid and modelId
    Given url ccte + "/chemical/property/model/reports/json/search/"
    And param dtxsid = 'DTXSID7020005'
    And param modelId = '1163'
    When method GET
    Then status 200

  Scenario: Testing the GET method for Histogram for Model file images by model id and type id
    Given url ccte + "/chemical/property/model/file/search/"
    And param modelId = 1166
    And param typeId = 4
    When method GET
    Then status 200

  Scenario: Testing the GET method for Excel file for Model file images by model id and type id
    Given url ccte + "/chemical/property/model/file/search/"
    And param modelId = 1168
    And param typeId = 2
    When method GET
    Then status 200

  Scenario: Testing the GET method for QMRAF for Model file images by model id and type id
    Given url ccte + "/chemical/property/model/file/search/"
    And param modelId = 1161
    And param typeId = 1
    When method GET
    Then status 200
