@regression
@business
@all
@chemical
Feature: Feature file for validating data of chemical search resource (exact value)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical search by exact match of DTXCID (check for NULL dtxsid)
    Given path '/chemical/search/equal/DTXCID001000007 '
    When method GET
    Then status 200
    And match response[0] contains {"dtxsid": null}
