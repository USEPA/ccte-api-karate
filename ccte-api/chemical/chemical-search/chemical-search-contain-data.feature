@regression
@business
@all
@chemical
Feature: Feature file for data validation of chemical search resource (substring)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Ensure that 'contain' endpoint does not include results based on inchikey when search term has less than 13 characters
    Given path '/chemical/search/contain/nafion'
    When method GET
    Then status 200
    And match response !contains {"searchName" : "InChIKey","searchValue" : "AHNAFIONGJNTAI-UHFFFAOYSA-N","rank" : 13, "hasStructureImage" : 1,"smiles" : "SC=CN1CCSC1C1=CC=CO1","isMarkush" : false,"preferredName" : "2-[2-(Furan-2-yl)-1,3-thiazolidin-3-yl]ethene-1-thiol","dtxsid" : "DTXSID10785417","dtxcid" : "DTXCID50736160","casrn" : "433917-50-1"}
