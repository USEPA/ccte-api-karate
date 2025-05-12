@smoke
@exposure
@all
Feature: Feature file for exposure functional use resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for functional use resource exposure data by dtxsid
    Given path '/exposure/functional-use/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the POST method for functional use resource exposure data by dtxsid
    Given url ccte + "/exposure/functional-use/search/by-dtxsid/"
    And request ["DTXSID7020182","DTXSID9020112"]
    When method POST
    Then status 200
    
  Scenario: Testing the GET method for functional use resource probability by dtxsid
    Given path '/exposure/functional-use/probability/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for functional use resource category
    Given path '/exposure/functional-use/category'
    When method GET
    Then status 200

