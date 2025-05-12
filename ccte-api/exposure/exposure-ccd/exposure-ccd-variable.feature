@regression
@contracts
@exposure
@all
Feature: Feature file for validating the response of the CCD exposure resources

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for chemical weight fraction records by dtxsid
    Given path '/exposure/ccd/chem-weight-fractions/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', prodName: '#present', displayPuc: '#present', pucKind: '#present', lowerweightfraction: '#present', upperweightfraction: '#present', weightfractiontype: '#present', gencat: '#present', prodfam: '#present', prod_type: '#present', pucDefinition: '#present', sourceName: '#present', sourceDescription: '#present', sourceUrl: '#present', sourceDownloadDate: '#present', productCount: '#present'}

  Scenario: Validating the response of the GET method for general use keywords by dtxsid
    Given path '/exposure/ccd/keywords/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', keywordset: '#present', sourceCount: '#present', dtxsid: '#present'}

  Scenario: Validating the response of the GET method for product use category by dtxsid
    Given path '/exposure/ccd/puc/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', displayPuc: '#present', pucKind: '#present', prodCount: '#present', genCat: '#present', prodfam: '#present', prodtype: '#present', definition: '#present'}

  Scenario: Validating the response of the GET method for reported functional use records by dtxsid
    Given path '/exposure/ccd/functional-use/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', category: '#present', definition: '#present'}

  Scenario: Validating the response of the GET method for biomonitoring data by dtxsid (NHANES Inferences)
    Given path '/exposure/ccd/monitoring-data/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', demographic: '#present', median: '#present', upperBound: '#present', lowerBound: '#present', nhanesCohort: '#present'}

  Scenario: Validating the response of the GET method for biomonitoring data by dtxsid (NHANES Inferences) with projection (ccd-biomonitoring)
    Given path '/exposure/ccd/monitoring-data/search/by-dtxsid/DTXSID7020182'
    And param projection = 'ccd-biomonitoring'
    When method GET
    Then status 200
    And match response[0] == {label: '#present', dtxsid: '#present', median: '#present', lower95th: '#present', upper95th: '#present', hoverMsg: '#present'}

  Scenario: Validating the response of the GET method for production volume data by dtxsid 
    Given path '/exposure/ccd/production-volume/search/by-dtxsid/DTXSID0020232'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', name: '#present', amount: '#present'}
