@regression
@contracts
@exposure
@all
Feature: Feature file for validating responses of exposure list-presence resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating response of the GET method for list prescence tags
    Given path '/exposure/list-presence/tags'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', tagName: '#present', tagDefinition: '#present', tagKind: '#present'}

  Scenario: Validating response of the GET method for list prescence by dtxsid
    Given path '/exposure/list-presence/search/by-dtxsid/DTXSID0020232'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', docid: '#present', doctitle: '#present', docsubtitle: '#present', docdate: '#present', organization: '#present', reportedfunction: '#present', functioncategory: '#present', component: '#present', keywordset: '#present'} 

  Scenario: Validating response of the POST method for list prescence by dtxsid
    Given url ccte + "/exposure/list-presence/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', docid: '#present', doctitle: '#present', docsubtitle: '#present', docdate: '#present', organization: '#present', reportedfunction: '#present', functioncategory: '#present', component: '#present', keywordset: '#present'} 
