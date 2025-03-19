@ignore
@smoke
@all
@chemical
Feature: Feature file for chemical property resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for property ids by type (predicted)
    Given path '/chemical/property/predicted/name'
    When method GET
    Then status 200

