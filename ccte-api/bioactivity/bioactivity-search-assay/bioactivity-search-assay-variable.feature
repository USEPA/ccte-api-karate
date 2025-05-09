@regression
@contracts
@bioactivity
@all
Feature: Feature file for validating responses of bioactivity Assay Search resources

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for assay search using starting value
    Given path '/bioactivity/search/start-with/ATG_S'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', searchName: '#present', searchValue: '#present', searchValueDesc: '#present', modifiedValue: '#present'}
    
  Scenario: Testing the GET method for assay search using exact value
    Given path '/bioactivity/search/equal/ATG_STAT3_CIS'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', searchName: '#present', searchValue: '#present', searchValueDesc: '#present', modifiedValue: '#present'}
    
  Scenario: Testing the GET method for assay search using substring
    Given path '/bioactivity/search/contain/AT3_CIS'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', searchName: '#present', searchValue: '#present', searchValueDesc: '#present', modifiedValue: '#present'}
