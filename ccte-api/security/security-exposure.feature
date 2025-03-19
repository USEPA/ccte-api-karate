@security
Feature: Feature file for security check on exposure microservice

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'

  Scenario: Authenticate with custom header
    Given path '/exposure/functional-use/search/by-dtxsid/DTXSID0020232'
    And header x-api-key = apikey
    When method GET
    Then status 200

  Scenario: Authenticate with query param
    Given path '/exposure/functional-use/search/by-dtxsid/DTXSID0020232'
    And param x-api-key = apikey
    When method GET
    Then status 200

  Scenario: Request missing auth
    Given path '/exposure/functional-use/search/by-dtxsid/DTXSID0020232'
    When method GET
    Then status 401

  Scenario: Send wrong api key
    Given path '/exposure/functional-use/search/by-dtxsid/DTXSID0020232'
    And header x-api-key = fakekey
    When method GET
    Then status 401
