@smoke
@chemical
@all
Feature: Feature file for ccd advanced chemical searches

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical details by dtxsid
    Given path '/chemical/search/by-exact-formula/C15H16O2'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical details by dtxsid
    Given path '/chemical/count/by-exact-formula/C15H16O2'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical details by dtxsid
    Given path '/chemical/search/by-msready-formula/C15H16O2'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical details by dtxsid
    Given path '/chemical/count/by-msready-formula/C15H16O2'
    When method GET
    Then status 200
