@regression
@contracts
@all
@exposure
Feature: Feature file for validating responses of exposure functional use resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating response of the GET method for functional use resource exposure data by dtxsid
    Given path '/exposure/functional-use/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', datatype: '#present', docid: '#present', doctitle: '#present', docdate: '#present', reportedfunction: '#present', functioncategory: '#present'}

  Scenario: Validating response of the GET method for functional use resource probability by dtxsid
    Given path '/exposure/functional-use/probability/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {probability: '#present', harmonizedFunctionalUse: '#present'}

  Scenario: Validating response of the GET method for functional use resource category
    Given path '/exposure/functional-use/category'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', title: '#present', description: '#present'}
