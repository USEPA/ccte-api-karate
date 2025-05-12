@regression
@contracts
@exposure
@all
Feature: Feature file for validating responses of exposure product data resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating response of the GET method for product data resource by dtxsid
    Given path '/exposure/product-data/search/by-dtxsid/DTXSID0020232'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', docid: '#present', doctitle: '#present', docdate: '#present', productname: '#present', gencat: '#present', prodfam: '#present', prodtype: '#present', classificationmethod: '#present', rawmincomp: '#present', rawmaxcomp: '#present', rawcentralcomp: '#present', unittype: '#present', lowerweightfraction: '#present', upperweightfraction: '#present', centralweightfraction: '#present', weightfractiontype: '#present', component: '#present'}

  Scenario: Validating response of the POST method for product data resource by dtxsid
    Given url ccte + "/exposure/product-data/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', docid: '#present', doctitle: '#present', docdate: '#present', productname: '#present', gencat: '#present', prodfam: '#present', prodtype: '#present', classificationmethod: '#present', rawmincomp: '#present', rawmaxcomp: '#present', rawcentralcomp: '#present', unittype: '#present', lowerweightfraction: '#present', upperweightfraction: '#present', centralweightfraction: '#present', weightfractiontype: '#present', component: '#present'}

  Scenario: Validating response of the GET method for product data resource puc
    Given path '/exposure/product-data/puc'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', kindName: '#present', genCat: '#present', prodfam: '#present', prodtype: '#present', definition: '#present'}
