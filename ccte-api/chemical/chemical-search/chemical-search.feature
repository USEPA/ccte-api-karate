@smoke
@chemical
@all
Feature: Feature file for chemical search resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  ############ Start-with ############

  Scenario: Testing the GET method for chemical search by starting value of chemical name
    Given path '/chemical/search/start-with/atraz'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by starting part of dtxsid
    Given path '/chemical/search/start-with/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by starting part of dtxcid
    Given path '/chemical/search/start-with/DTXCID505'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by starting part of InChIKey
    Given path '/chemical/search/start-with/MXWJVTOOROXGIU'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by starting part of CASRN
    Given path '/chemical/search/start-with/1912-24-9'
    When method GET
    Then status 200

  ############ Equals ############

  Scenario: Testing the GET method for chemical search by exact match of chemical name
    Given path '/chemical/search/equal/atrazine'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by exact match of dtxsid
    Given path '/chemical/search/equal/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by exact match of dtxcid
    Given path '/chemical/search/equal/DTXCID505'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by exact match of InChIKey
    Given path '/chemical/search/equal/MXWJVTOOROXGIU-UHFFFAOYSA-N'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by exact match of CASRN
    Given path '/chemical/search/equal/1912-24-9'
    When method GET
    Then status 200

  Scenario: Testing the POST method for search exact match by batch
    Given url ccte + "/chemical/search/equal/"
    And request 'DTXSID7020182\nEPAPLT0232A03\natrazine\n1912-24-9\n194615'
    When method POST
    Then status 200

  ############ Contains (substring) ############

  Scenario: Testing the GET method for chemical search by substring of chemical name
    Given path '/chemical/search/contain/razine'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by substring of dtxsid
    Given path '/chemical/search/contain/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by substring of dtxcid
    Given path '/chemical/search/contain/DTXCID505'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by substring of InChIKey
    Given path '/chemical/search/contain/MXWJVTOOROXGIU'
    When method GET
    Then status 200

  @ignore
  Scenario: Testing the GET method for chemical search by substring of CASRN (broken)
    Given path '/chemical/search/contain/1912-24'
    When method GET
    Then status 200

  ############ Special Case ############
  Scenario: Testing the GET method for ALL DTXSIDs and DTXCIDs
    Given path '/chemical/all'
    And param projection = 'all-ids'
    When method GET
    Then status 200
