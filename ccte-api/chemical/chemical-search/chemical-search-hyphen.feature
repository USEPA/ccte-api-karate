@smoke
@all
@chemical
Feature: Feature file for chemical search resource (exact value)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical search with different characters (hyphen ‐)
    Given path '/chemical/search/equal/71‐43‐2'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search with different characters (Figure dash ‒)
    Given path '/chemical/search/equal/71‒43‒2'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search with different characters (En dash –)
    Given path '/chemical/search/equal/71–43–2'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search with different characters (Em dash —)
    Given path '/chemical/search/equal/71—43—2'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search with different characters (Horizontal bar ―)
    Given path '/chemical/search/equal/71―43―2'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search with different characters (Minus sign −)
    Given path '/chemical/search/equal/71−43−2'
    When method GET
    Then status 200
