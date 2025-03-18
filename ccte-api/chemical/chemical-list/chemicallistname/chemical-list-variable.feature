@regression
@contracts
Feature: Feature file for chemical list resource with projection chemicallistname

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for the list name attribute of public lists by type (projection = chemicallistname)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match response[0] == {listName: '#present'}

  Scenario: Validating the response of the GET method for the list name attribute in public lists by name (projection = chemicallistname)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match response == {listName: '#present'}

  Scenario: Validating the response of the GET method for the list name attribute in public lists by dtxsid (projection = chemicallistname)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match response[0] == {listName: '#present'}

  Scenario: Validating the response of the GET method for all public lists (projection = chemicallistname)
    Given url ccte + "/chemical/list/"
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match response[0] == {listName: '#present'}
