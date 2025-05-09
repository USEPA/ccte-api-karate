@regression
@contracts
@chemical
@all
Feature: Feature file validating responses for chemical file resource

  Background:
    * url ccte
    * header Accept = '*/*'

  Scenario: Validating the format response of the GET method for structure image by dtxsid (no API key/SVG)
    Given path '/chemical/file/image/search/by-dtxsid/DTXSID7020182'
    And param format = 'SVG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/svg+xml'

  Scenario: Validating the format response of the GET method for structure image by dtxsid (no API key/PNG)
    Given path '/chemical/file/image/search/by-dtxsid/DTXSID7020182'
    And param format = 'PNG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

  Scenario: Validating the format response of the GET method for structure image by dtxsid (no API key/unspecified)
    Given path '/chemical/file/image/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

  Scenario: Validating the format response of the GET method for structure image by dtxcid (no API key/SVG)
    Given path '/chemical/file/image/search/by-dtxcid/DTXCID30182'
    And param format = 'SVG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/svg+xml'

  Scenario: Validating the format response of the GET method for structure image by dtxcid (no API key/PNG)
    Given path '/chemical/file/image/search/by-dtxcid/DTXCID30182'
    And param format = 'PNG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

  Scenario: Validating the format response of the GET method for structure image by dtxcid (no API key/unspecified)
    Given path '/chemical/file/image/search/by-dtxcid/DTXCID30182'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

  Scenario: Validating the format response of the GET method for structure image by gsid (no API key/SVG)
    Given path '/chemical/file/image/search/by-gsid/20182'
    And param format = 'SVG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/svg+xml'

  Scenario: Validating the format response of the GET method for structure image by gsid (no API key/PNG)
    Given path '/chemical/file/image/search/by-gsid/20182'
    And param format = 'PNG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

  Scenario: Validating the format response of the GET method for structure image by gsid (no API key/unspecified)
    Given path '/chemical/file/image/search/by-gsid/20182'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'
