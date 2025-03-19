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

  Scenario: Testing the GET method for Model file images by model id and type id
    Given url ccte + "/chemical/property/model/image/search/"
    And param modelId = 1166
    And param typeId = 4
    When method GET
    Then status 200
