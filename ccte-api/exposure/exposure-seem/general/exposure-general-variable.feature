@regression
@contracts
@all
@exposure
Feature: Feature file for validating responses of exposure seem general resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey


  Scenario: Testing the GET method for seems demo by dtxsid
    Given path '/exposure/seem/general/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200 
    And match response == {dtxsid : '#present', productionVolume : '#present', units : '#present', stockholmConvention : '#present', probabilityDietary : '#present', probabilityResidential : '#present', probabilityPesticde : '#present', probabilityIndustrial : '#present', dataVersion : '#present', importDate : '#present'}
