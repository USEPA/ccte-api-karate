@cors
@cors/sec
Feature: CORS Requests

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    
  Scenario: Allowed Website1
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID0021125'
    And header Origin = 'http://localhost:3003'
    And header Access-Control-Request-Method = 'GET'
    And header Access-Control-Request-Headers = 'access-control-allow-headers,access-control-origin'
    When method OPTIONS
    Then status 200

  Scenario: Allowed Website2
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID0021125'
    And header Origin = 'http://localhost:8888'
    And header Access-Control-Request-Method = 'GET'
    And header Access-Control-Request-Headers = 'access-control-allow-headers,access-control-origin'
    When method OPTIONS
    Then status 200

  Scenario: Allowed Website3
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID0021125'
    And header Origin = 'https://ccte-ccd-dev.epa.gov'
    And header Access-Control-Request-Method = 'GET'
    And header Access-Control-Request-Headers = 'access-control-allow-headers,access-control-origin'
    When method OPTIONS
    Then status 200

  Scenario: Allowed Website4
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID0021125'
    And header Origin = 'https://ccte-ccd-stg.epa.gov'
    And header Access-Control-Request-Method = 'GET'
    And header Access-Control-Request-Headers = 'access-control-allow-headers,access-control-origin'
    When method OPTIONS
    Then status 200

  Scenario: Allowed Website5
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID0021125'
    And header Origin = 'https://ccte-ccd-prod.epa.gov'
    And header Access-Control-Request-Method = 'GET'
    And header Access-Control-Request-Headers = 'access-control-allow-headers,access-control-origin'
    When method OPTIONS
    Then status 200

  Scenario: Allowed Website6
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID0021125'
    And header Origin = 'https://comptox.epa.gov'
    And header Access-Control-Request-Method = 'GET'
    And header Access-Control-Request-Headers = 'access-control-allow-headers,access-control-origin'
    When method OPTIONS
    Then status 200

  Scenario: Allowed Website7
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID0021125'
    And header Origin = 'https://ccte-api-s.app.cloud.gov'
    And header Access-Control-Request-Method = 'GET'
    And header Access-Control-Request-Headers = 'access-control-allow-headers,access-control-origin'
    When method OPTIONS
    Then status 200

  Scenario: Unknown Website Not Allowed
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID0021125'
    And header Origin = 'http://example.com'
    And header Access-Control-Request-Method = 'GET'
    And header Access-Control-Request-Headers = 'access-control-allow-headers,access-control-origin'
    When method OPTIONS
    Then status 401
