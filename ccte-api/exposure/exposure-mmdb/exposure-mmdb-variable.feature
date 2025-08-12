@regression
@contracts
@exposure
@all
Feature: Feature file for validating the response of the exposure MMDB resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for harmonized aggregate records by dtxsid
    Given path '/exposure/mmdb/aggregate/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', fullSourceName: '#present', chemicalName: '#present', dtxsid: '#present', preferredName: '#present', casrn: '#present', result: '#present', units: '#present', cleanedUnits: '#present', statistic: '#present', sampleSize: '#present', lod: '#present', loq: '#present', numDetects: '#present', numNonDetects: '#present', rateDetects: '#present', detected: '#present', detectedConflict: '#present', notesDetects: '#present', species: '#present', media: '#present', harmonizedMedium: '#present', population: '#present', subPopulation: '#present', collectionActivityId: '#present', dates: '#present', years: '#present', location: '#present', stateOrProvince: '#present', county: '#present', country: '#present', qualityFlag: '#present', link: '#present', reference: '#present', version: '#present', exportDate: '#present', casnumber: '#present'}

  Scenario: Validating the response of the GET method for harmonized aggregate records by medium
    Given path '/exposure/mmdb/aggregate/by-medium'
    And param medium = 'groundwater'
    And param pageNumber = '1'
    When method GET
    Then status 200
    And match response == {medium: '#present', totalRecords: '#present', recordsOnPage: '#present', pageNumber: '#present', totalPages: '#present', data: '#present'}

  Scenario: Validating the response of the GET method for harmonized single-sample records by dtxsid
    Given path '/exposure/mmdb/single-sample/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', fullSourceName: '#present', chemicalName: '#present', dtxsid: '#present', preferredName: '#present', casrn: '#present', result: '#present', units: '#present', cleanedUnits: '#present', lod: '#present', loq: '#present', detectionFlag: '#present', resultFlag: '#present', detected: '#present', detectedConflict: '#present', notesDetects: '#present', species: '#present', media: '#present', harmonizedMedium: '#present', method: '#present', collectionActivityId: '#present', sampleId: '#present', mmdbSampleId: '#present', dates: '#present', year: '#present', month: '#present', time: '#present', location: '#present', stateOrProvince: '#present', county: '#present', country: '#present', qualityFlag: '#present', link: '#present', reference: '#present', version: '#present', exportDate: '#present', casnumber: '#present'}

  Scenario: Validating the response of the GET method for harmonized single-sample records by medium
    Given path '/exposure/mmdb/single-sample/by-medium'
    And param medium = 'groundwater'
    And param pageNumber = '1'
    When method GET
    Then status 200
    And match response == {medium: '#present', totalRecords: '#present', recordsOnPage: '#present', pageNumber: '#present', totalPages: '#present', data: '#present'}

  Scenario: Validating the response of the GET method for ALL searchable harmonized medium categories
    Given path '/exposure/mmdb/mediums'
    When method GET
    Then status 200
    And match response[0] == {harmonizedMediumDesc: '#present', harmonizedMedium: '#present'}
