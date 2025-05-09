@smoke
@bioactivity
@all
Feature: Feature file for bioactivity assay resources

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for assay data by aeid
    Given path '/bioactivity/assay/search/by-aeid/3032'
    When method GET
    Then status 200

  Scenario: Testing the POST method for assay annotation by batch aeid
    Given url ccte + "/bioactivity/assay/search/by-aeid/"
    And request [111,3032]
    When method POST
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

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-tcpl-processing)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-tcpl-processing'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-reagents)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-reagents'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-aop)
    Given path '/bioactivity/assay/search/by-aeid/711'
    And param projection = 'ccd-assay-aop'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = assay-all)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'assay-all'
    When method GET
    Then status 200


  Scenario: Testing the GET method for assay endpoints list by gene symbol
    Given path '/bioactivity/assay/search/by-gene/TUBA1A'
    When method GET
    Then status 200

  Scenario: Testing the GET method for array of dtxsids by aeid
    Given path '/bioactivity/assay/chemicals/search/by-aeid/3032'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay single-conc data by aeid 
    Given path '/bioactivity/assay/single-conc/search/by-aeid/3032'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = single-conc)
    Given path '/bioactivity/assay/single-conc/search/by-aeid/3032'
    And param projection = 'single-conc'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-single-conc)
    Given path '/bioactivity/assay/single-conc/search/by-aeid/3032'
    And param projection = 'ccd-single-conc'
    When method GET
    Then status 200

  Scenario: Testing the GET method for getting all assay annotations
    Given url ccte + "/bioactivity/assay/"
    When method GET
    Then status 200

  Scenario: Testing the GET method for getting all assay annotations (projection = ccd-assay-list)
    Given url ccte + "/bioactivity/assay/"
    And param projection = 'ccd-assay-list'
    When method GET
    Then status 200

  Scenario: Testing the GET method for getting count of all assay annotations
    Given path '/bioactivity/assay/count'
    When method GET
    Then status 200

