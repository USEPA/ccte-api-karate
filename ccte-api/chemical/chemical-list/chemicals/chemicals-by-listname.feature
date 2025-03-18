@smoke
@all
@chemical
Feature: Feature file for chemical list resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for dtxsids by listname
    Given path '/chemical/list/chemicals/search/by-listname/40CFR1164'
    When method GET
    Then status 200

  Scenario: Testing the GET method for dtxsids by listname and starting value of chemical name
    Given path '/chemical/list/chemicals/search/start-with/40CFR1164/ammo'
    When method GET
    Then status 200

  Scenario: Testing the GET method for dtxsids by listname and starting value of chemical name (mixed case)
    Given path '/chemical/list/chemicals/search/start-with/AnTmIC/PHOSPHORIC ACID'
    When method GET
    Then status 200

  Scenario: Testing the GET method for dtxsids by listname and contain value of chemical name
    Given path '/chemical/list/chemicals/search/contain/ANTMIC/PHOSPHORIC ACID'
    When method GET
    Then status 200

  Scenario: Testing the GET method for dtxsids by listname and contain value of chemical name (mixed case)
    Given path '/chemical/list/chemicals/search/contain/AnTmIC/PHOSPHORIC ACID'
    When method GET
    Then status 200

  Scenario: Testing the GET method for dtxsids by listname and exact value of chemical name
    Given path '/chemical/list/chemicals/search/equal/DEVTOX/BISPHENOL A'
    When method GET
    Then status 200

  Scenario: Testing the POST method for listnames by dtxsids
    Given path '/chemical/list/chemicals/search/by-dtxsid'
    And request {"dtxsids": ["DTXSID7020182"], "chemicalLists": ["WIKIPEDIA","COA_Summaries","tan_db"]}
    When method POST
    Then status 200
