@regression
@contracts
@all
@exposure
Feature: Feature file for validating responses of exposure seem demographic resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey


  Scenario: Testing the GET method for seems demo by dtxsid
    Given path '/exposure/seem/demographic/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200 
    And match response[0] == {id : '#present', dtxsid : '#present', demographic : '#present', predictor : '#present', median : '#present', medianText : '#present', l95 : '#present', l95Text : '#present', u95 : '#present', u95Text : '#present', units : '#present', ad : '#present', reference : '#present', dataVersion : '#present', importDate : '#present'}
