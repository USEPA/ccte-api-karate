@smoke
@chemical
@all
Feature: Feature file for chemical opsin resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for InChI by systematic IUPAC Name
    Given path 'chemical/opsin/to-inchi/acetamide'
    When method GET
    Then status 200

  Scenario: Testing the GET method for InChIKey by systematic IUPAC Name
    Given path 'chemical/opsin/to-inchikey/acetamide'
    When method GET
    Then status 200

  Scenario: Testing the GET method for Smiles by systematic IUPAC Name
    Given path 'chemical/opsin/to-smiles/acetamide'
    When method GET
    Then status 200
