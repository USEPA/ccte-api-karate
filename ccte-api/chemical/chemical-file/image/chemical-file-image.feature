@smoke
@chemical
@all
Feature: Feature file for chemical file resource (image)

  Background:
    * url ccte
    * header Accept = '*/*'
    * header x-api-key = apikey

  Scenario: Testing the GET method for structure image by dtxsid
    Given path '/chemical/file/image/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for structure image by dtxcid
    Given path '/chemical/file/image/search/by-dtxcid/DTXCID505'
    When method GET
    Then status 200

  Scenario: Testing the GET method for structure image by gsid
    Given path 'chemical/file/image/search/by-gsid/20182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for structure image by smiles
    Given path 'chemical/file/image/generate'
    And param smiles = 'CC(C)(C1=CC=C(O)C=C1)C1=CC=C(O)C=C1'
    When method GET
    Then status 200
