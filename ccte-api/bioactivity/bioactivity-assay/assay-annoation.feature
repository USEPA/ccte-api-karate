@smoke
@all
@bioactivity
Feature: Feature file for bioactivity assay resources

  Background:
    * url ccte
    * maskRequestHeaders: ['Host']
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for assay data by aeid
    Given path '/bioactivity/assay/search/by-aeid/3032'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-annotation)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-annotation'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-gene)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-gene'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection ccd-assay-citations)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-citations'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-tcpl)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-tcpl'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-reagents)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-reagents'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = assay-all)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'assay-all'
    When method GET
    Then status 200

  Scenario: Testing the GET method for array of dtxsids by aeid
    Given path '/bioactivity/assay/chemicals/search/by-aeid/3032'
    When method GET
    Then status 200

  Scenario: Testing the POST method for assay annotation by batch aeid
    Given url ccte + "/bioactivity/assay/search/by-aeid/"
    And request [111,3032]
    When method POST
    Then status 200

