@regression
@data
Feature: Feature file for validating the data of the chemical list resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Checking for chemical list names with spaces
    Given url "https://api-ccte.epa.gov/chemical/list/"
    And param projection = 'chemicallistname'
    And def space = " "
    When method GET
    Then status 200
    And match each response contains {listName: '#regex(^+space)$'}

