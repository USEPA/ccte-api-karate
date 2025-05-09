@smoke
@chemical
@all
Feature: Feature file for chemical info from Indigo toolkit

  Background:
    * url ccte
    * header Accept = '*/*' 
    * header Content-Type = 'text/html'
    * header x-api-key = apikey

  Scenario: Testing the POST method for InCHI by mol
    Given path '/chemical/indigo/to-inchi'
    And request mol
    When method POST
    Then status 200


  Scenario: Testing the POST method for InCHIKey by mol
    Given path 'chemical/indigo/to-inchikey'
    And request mol
    When method POST
    Then status 200

  Scenario: Testing the POST method for Smiles by mol
    Given path 'chemical/indigo/to-smiles'
    And request mol
    When method POST
    Then status 200

  Scenario: Testing the POST method for Canonical Smiles by mol
    Given path 'chemical/indigo/to-canonicalsmiles'
    And request mol
    When method POST
    Then status 200

  Scenario: Testing the POST method for molecular weight by mol
    Given path 'chemical/indigo/to-molweight'
    And request mol
    When method POST
    Then status 200

  Scenario: Testing the POST method for mol file v2000 by mol
    Given path 'chemical/indigo/to-mol2000'
    And request mol
    When method POST
    Then status 200

  Scenario: Testing the POST method for mol file v3000 by mol
    Given path 'chemical/indigo/to-mol3000'
    And request mol
    When method POST
    Then status 200


