@regression
@contracts
@all
@chemical
Feature: Feature file for validating the response of chemical details resource

  Background:
    * url ccte
    * header Host = ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the POST method for chemical details by batch dtxsid
    Given url ccte + "/chemical/detail/search/by-dtxsid/"
    And param projection = 'ntatoolkit'
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {expocatMedianPrediction: '#present', expocat: '#present', nhanes: '#present', inchikey: '#present', msReadySmiles: '#present', dtxsid: '#present', dtxcid: '#present', casrn: '#present', preferredName: '#present', activeAssays: '#present', molFormula: '#present', monoisotopicMass: '#present', percentAssays: '#present', sourcesCount: '#present', totalAssays: '#present', smiles: '#present', cpdataCount: '#present'}
