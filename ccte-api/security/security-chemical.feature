@security
Feature: Feature file for security check on chemical microservice

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'

  Scenario: Authenticate with custom header
    Given path '/chemical/detail/search/by-dtxsid/DTXSID7020182'
    And header x-api-key = apikey
    When method GET
    Then status 200

  Scenario: Authenticate with query param
    Given path '/chemical/detail/search/by-dtxsid/DTXSID7020182'
    And param x-api-key = apikey
    When method GET
    Then status 200

  Scenario: Request missing auth
    Given path '/chemical/detail/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 401

  Scenario: Send wrong api key
    Given path '/chemical/detail/search/by-dtxsid/DTXSID7020182'
    And header x-api-key = fakekey
    When method GET
    Then status 401
