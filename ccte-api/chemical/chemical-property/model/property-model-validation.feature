@regression
@business
@chemical
@all
Feature: Feature file for validating the response of the chemical property model endpoints

  Background:
    * url ccte
    * header Accept = '*/*' 
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for Model reports by dtxsid
    Given path '/chemical/property/model/reports/search/by-dtxsid/DTXSID7020005'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', dtxcid: '#present', modelId: '#present', modelName: '#present', propertyName: '#present', propertyCategory: '#present', sourceName: '#present', reportJson: '#present', reportHtml: '#present'}

  Scenario: Validating the response of the GET method for HTML strings of Model reports by dtxsid and modelId
    Given url ccte + "/chemical/property/model/reports/html/search/"
    And param dtxsid = 'DTXSID7020005'
    And param modelId = '1163'
    When method GET
    Then status 200
    And match header Content-Type == 'text/plain;charset=UTF-8'

  Scenario: Validating the response of the GET method for JSON strings of Model reports by dtxsid and modelId
    Given url ccte + "/chemical/property/model/reports/json/search/"
    And param dtxsid = 'DTXSID7020005'
    And param modelId = '1163'
    When method GET
    Then status 200
    And match header Content-Type == 'text/plain;charset=UTF-8'

  Scenario: Validating the response of the GET method for Histogram for Model file images by model id and type id
    Given url ccte + "/chemical/property/model/file/search/"
    And param modelId = 1166
    And param typeId = 4
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

  Scenario: Validating the response of the GET method for Excel file for Model file images by model id and type id
    Given url ccte + "/chemical/property/model/file/search/"
    And param modelId = 1168
    And param typeId = 2
    When method GET
    Then status 200
    And match header Content-Type == 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'

  Scenario: Validating the response of the GET method for QMRAF for Model file images by model id and type id
    Given url ccte + "/chemical/property/model/file/search/"
    And param modelId = 1161
    And param typeId = 1
    When method GET
    Then status 200
    And match header Content-Type == 'application/pdf'
