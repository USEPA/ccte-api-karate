@smoke
@all
@exposure
Feature: Feature file for exposure SEEMs general data

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey


  Scenario: Testing the GET method for seems general by dtxsid
    Given path '/exposure/seem/general/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200 
