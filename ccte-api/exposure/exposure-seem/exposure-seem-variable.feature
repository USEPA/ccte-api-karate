@regression
@contracts
@exposure
@all
Feature: Feature file for validating the response of the exposure SEEMs resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  ############ Demographic ############

  Scenario: Testing the GET method for seems demographic data by dtxsid
    Given path '/exposure/seem/demographic/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id : '#present', dtxsid : '#present', demographic : '#present', predictor : '#present', median : '#present', medianText : '#present', l95 : '#present', l95Text : '#present', u95 : '#present', u95Text : '#present', units : '#present', ad : '#present', reference : '#present'} 

  Scenario: Testing the POST method for seems demographic data by dtxsid
    Given url ccte + "/exposure/seem/demographic/search/by-dtxsid/DTXSID7020182"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id : '#present', dtxsid : '#present', demographic : '#present', predictor : '#present', median : '#present', medianText : '#present', l95 : '#present', l95Text : '#present', u95 : '#present', u95Text : '#present', units : '#present', ad : '#present', reference : '#present'} 

  Scenario: Testing the GET method for seems demographic data by dtxsid
    Given path '/exposure/seem/demographic/search/by-dtxsid/DTXSID7020182'
    And param projection = 'ccd-demographic'
    When method GET
    Then status 200
    And match response[0] == {units: '#present', demographic: '#present', median: '#present', predictor: '#present', u95: '#present'}

  ############ General ############ 

  Scenario: Testing the GET method for seems general data by dtxsid
    Given path '/exposure/seem/general/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200 
    And match response == {dtxsid : '#present', productionVolume : '#present', units : '#present', stockholmConvention : '#present', probabilityDietary : '#present', probabilityResidential : '#present', probabilityPesticde : '#present', probabilityIndustrial : '#present'}

  Scenario: Testing the POST method for seems general data by dtxsid
    Given url ccte + "/exposure/seem/general/search/by-dtxsid/DTXSID7020182"
    And request batchdtxsid
    When method POST
    Then status 200 
    And match response[0] == {dtxsid : '#present', productionVolume : '#present', units : '#present', stockholmConvention : '#present', probabilityDietary : '#present', probabilityResidential : '#present', probabilityPesticde : '#present', probabilityIndustrial : '#present'}

  Scenario: Testing the GET method for seems general data by dtxsid
    Given path '/exposure/seem/general/search/by-dtxsid/DTXSID7020182'
    And param projection = 'ccd-general'
    When method GET
    Then status 200 
    And match response[0] == {value: '#present', units: '#present', predictor: '#present'}
