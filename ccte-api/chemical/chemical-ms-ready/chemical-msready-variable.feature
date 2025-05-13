@regression
@contracts
@all
@chemical
Feature: Feature file for validating the responses of the chemical search resource (ms ready)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validate response for the GET method of ms-ready chemical using mass range
    Given path '/chemical/msready/search/by-mass/154.9/154.95'
    When method GET
    Then status 200
    And match response == ["DTXSID10723733", "DTXSID10809066", "DTXSID50381997", "DTXSID50382005", "DTXSID9021681"]

  Scenario: Validate response for the POST method of ms-ready chemical using mass range
    Given url ccte + "/chemical/msready/search/by-mass/"
    And header Content-Type = 'application/problem+json; charset=utf-8'
    And request {masses: [12, 16.1], error: 2}
    When method POST
    Then status 200
    And match response == {12.0: ["DTXSID10846370", "DTXSID90166624", "DTXSID9027651"], 16.1: []}
    
  Scenario: Validate response for the POST method of ms-ready chemical using mass range (missing error)
    Given url ccte + "/chemical/msready/search/by-mass/"
    And request {masses: [11.2, 33.1]}
    When method POST
    Then status 400
    And match response == {"type": "about:blank", "title": "Constraint Violations", "status": 400, "instance": "/chemical/msready/search/by-mass/", "violations": {"error": "error value couldn't be null"}}

  Scenario: Validate response for the POST method of ms-ready chemical using mass range (missing batch range)
    Given url ccte + "/chemical/msready/search/by-mass/"
    And header Content-Type = 'application/problem+json; charset=utf-8'
    And request {error: '1'}
    When method POST
    Then status 400
    And match response == {"type": "about:blank", "title": "Constraint Violations", "status": 400, "instance": "/chemical/msready/search/by-mass/", "violations": {"masses": "Array of Masses couldn't be empty"}}

  Scenario: Validating the response of the GET method for ms ready chemical by formula
    Given path '/chemical/msready/search/by-formula/C16H24N2O5S'
    When method GET
    Then status 200
    And match response == [ "DTXSID00874844", "DTXSID201151393", "DTXSID301019504", "DTXSID30216132", "DTXSID401197484", "DTXSID501204919", "DTXSID60874845", "DTXSID801179842", "DTXSID901140090", "DTXSID90821084" ]

  Scenario: Validating the response of the GET method for ms ready chemical by DTXCID
    Given path '/chemical/msready/search/by-dtxcid/DTXCID30182'
    When method GET
    Then status 200
    And match response == [ "DTXSID0027480", "DTXSID00584370", "DTXSID10675703", "DTXSID10724048", "DTXSID10741891", "DTXSID10767819", "DTXSID20925084", "DTXSID30747173", "DTXSID30991730", "DTXSID40583721", "DTXSID40662328", "DTXSID40911742", "DTXSID40987609", "DTXSID501027979", "DTXSID501319314", "DTXSID50855401", "DTXSID60639875", "DTXSID60776870", "DTXSID60915606", "DTXSID60925927", "DTXSID60988350", "DTXSID7020182", "DTXSID90240211", "DTXSID90967037" ]
