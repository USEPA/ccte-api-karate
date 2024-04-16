
@security
Feature: Feature file for security check on hazard microservice

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'

  Scenario: Authenticate with custom header
    Given path '/hazard/search/by-dtxsid/DTXSID0021125'
    And header x-api-key = apikey
    When method GET
    Then status 200

  Scenario: Authenticate with query param
    Given path '/hazard/search/by-dtxsid/DTXSID0021125'
    And param x-api-key = apikey
    When method GET
    Then status 200

  Scenario: Request missing auth
    Given path '/hazard/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 401

  Scenario: Send wrong api key
    Given path '/hazard/search/by-dtxsid/DTXSID0021125'
    And header x-api-key = `${{ secrets.FAKE_KEY }}`
    When method GET
    Then status 401
