@ignore
@regression
@all
@chemical
Feature: Feature file to see if the dtxsids of a  GET requested chemical list could be POSTed directly into another endpoint

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Pulling data from the chemical list search resource (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And def data = response.dtxsids

    # Inserting DTXSIDs from the chemical list search feature into the chemical detail batch resource (projection = chemicaldetailstandard)
    Given url ccte + "/chemical/detail/search/by-dtxsid/"
    And header x-api-key = apikey 
    And param projection = 'ccdchemicaldetail'
    And request data
    When method POST
    Then status 200
