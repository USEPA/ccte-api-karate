@regression
@contracts
@all
@chemical
Feature: Feature file for validating chemical search resource
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating response attributes using the GET method for chemical search by starting value of chemical name
    Given path '/chemical/search/start-with/atraz'
    When method GET
    Then status 200
    And match response[0] == {hasStructureImage : '#present', smiles : '#present', isMarkush :'#present', searchName : '#present', searchValue : '#present', rank : '#present', dtxsid : '#present', dtxcid : '#present', casrn : '#present', preferredName : '#present'}

  Scenario: Validating response attributes using the GET method for chemical search by exact match of chemical name
    Given path '/chemical/search/equal/atrazine'
    When method GET
    Then status 200
    And match response[0] == {hasStructureImage : '#present', smiles : '#present', isMarkush : '#present', searchName : '#present', searchValue : '#present', rank : '#present', dtxsid : '#present', dtxcid : '#present', casrn : '#present', preferredName : '#present'}

  Scenario: Validating response attributes using the GET method for chemical search by substring of chemical name
    Given path '/chemical/search/contain/razine'
    When method GET
    Then status 200
    And match response[0] == {hasStructureImage: '#present', smiles: '#present', isMarkush: '#present', searchName: '#present', searchValue: '#present', rank: '#present', dtxsid: '#present', dtxcid: '#present', casrn: '#present', preferredName: '#present'}
