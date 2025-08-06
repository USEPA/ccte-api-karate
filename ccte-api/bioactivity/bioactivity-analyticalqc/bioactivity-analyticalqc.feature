@smoke
@bioactivity
@all
Feature: Feature file for bioactivity analytical qc resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for bioactivity data by dtxsid
    Given path '/bioactivity/analyticalqc/search/by-dtxsid/DTXSID9026974'
    When method GET
    Then status 200
