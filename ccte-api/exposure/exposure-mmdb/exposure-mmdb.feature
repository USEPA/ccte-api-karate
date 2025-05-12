@smoke
@exposure
@all
Feature: Feature file for exposure MMDB resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for harmonized aggregate records by dtxsid
    Given path '/exposure/mmdb/aggregate/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for harmonized aggregate records by medium
    Given path '/exposure/mmdb/aggregate/by-medium/groundwater'
    And param pageNumber = '1'
    When method GET
    Then status 200

  Scenario: Testing the GET method for harmonized single-sample records by dtxsid
    Given path '/exposure/mmdb/single-sample/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for harmonized single-sample records by medium
    Given path '/exposure/mmdb/single-sample/by-medium/groundwater'
    And param pageNumber = '1'
    When method GET
    Then status 200

  Scenario: Testing the GET method for ALL searchable harmonized medium categories
    Given path '/exposure/mmdb/mediums'
    When method GET
    Then status 200
