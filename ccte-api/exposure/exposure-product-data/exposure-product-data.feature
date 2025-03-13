@smoke
Feature: Feature file for exposure product data resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for product data resource by dtxsid
    Given path '/exposure/product-data/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for product data resource puc
    Given path '/exposure/product-data/puc'
    When method GET
    Then status 200

  Scenario: Testing the POST method for product data by dtxsids
    Given url "https://ctx-api-dev.ccte.epa.gov/exposure/product-data/search/by-dtxsid/"
    And request ["DTXSID7020182","DTXSID9020112"]
    When method POST
    Then status 200
