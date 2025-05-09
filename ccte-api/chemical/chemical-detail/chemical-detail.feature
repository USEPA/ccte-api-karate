@smoke
@chemical
@all
Feature: Feature file for chemical details resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical details by dtxsid
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    When method GET
    Then status 200

  Scenario: Testing the POST method for chemical details by batch dtxsid
    Given url ccte + "/chemical/detail/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200

  Scenario: Testing Error Message: GET method for chemical details by dtxsid (wrong projection)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'chemicaldetailstandard1'
    When method GET
    Then status 400

  Scenario: Testing Error Message: GET method for chemical details by dtxsid (wrong dtxsid)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID777x'
    When method GET
    Then status 400

  Scenario: Testing the GET method for chemical details by dtxcid
    Given path '/chemical/detail/search/by-dtxcid/DTXCID40210'
    When method GET
    Then status 200

  Scenario: Testing the POST method for chemical details by batch dtxcid
    Given url ccte + "/chemical/detail/search/by-dtxcid/"
    And request batchdtxcid
    When method POST
    Then status 200

  Scenario: Testing Error Message: GET method for chemical details by dtxcid (wrong dtxcid)
    Given path '/chemical/detail/search/by-dtxsid/DTXCID30182x'
    When method GET
    Then status 400

  Scenario: Testing the GET method for ALL chemical details
    Given path 'chemical/all'
    When method GET
    Then status 200

  Scenario: Testing the GET method for ALL chemical details (projection = all-ids)
    Given path 'chemical/all'
    And param projeciton = 'all-ids''
    When method GET
    Then status 200

#Projection checks

  Scenario: Testing the GET method for chemical details by dtxcid (projection = chemicaldetailall)
    Given path '/chemical/detail/search/by-dtxcid/DTXCID40210'
    And param projection = 'chemicaldetailall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical details by dtxsid (projection = chemicaldetailstandard)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'chemicaldetailstandard'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical details by dtxsid (projection = chemicalidentifier)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'chemicalidentifier'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical details by dtxsid (projection = chemicalstructure)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'chemicalstructure'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical details by dtxcid (projection = ntatoolkit)
    Given path '/chemical/detail/search/by-dtxcid/DTXCID40210'
    And param projection = 'ntatoolkit'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical details by dtxsid (projection = ccdchemicaldetails) 
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'ccdchemicaldetails'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical details by dtxsid (projection = compact)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'compact'
    When method GET
    Then status 200
