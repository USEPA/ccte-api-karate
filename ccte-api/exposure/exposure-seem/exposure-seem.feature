@smoke
@exposure
@all
Feature: Feature file for exposure SEEMs resource

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

  Scenario: Testing the POST method for seems demographic data by dtxsid
    Given url ccte + "/exposure/seem/demographic/search/by-dtxsid/DTXSID7020182"
    And request batchdtxsid
    When method POST
    Then status 200

  Scenario: Testing the GET method for seems demographic data by dtxsid
    Given path '/exposure/seem/demographic/search/by-dtxsid/DTXSID7020182'
    And param projection = 'ccd-demographic'
    When method GET
    Then status 200

  ############ General ############ 

  Scenario: Testing the GET method for seems general data by dtxsid
    Given path '/exposure/seem/general/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200 

  Scenario: Testing the POST method for seems general data by dtxsid
    Given url ccte + "/exposure/seem/general/search/by-dtxsid/DTXSID7020182"
    And request batchdtxsid
    When method POST
    Then status 200 

  Scenario: Testing the GET method for seems general data by dtxsid
    Given path '/exposure/seem/general/search/by-dtxsid/DTXSID7020182'
    And param projection = 'ccd-general'
    When method GET
    Then status 200 
