@regression
@contracts
@chemical
@all
Feature: Feature file for validating the response of chemical property resource 

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for property ids by type (experimental)
    Given path '/chemical/property/experimental/name'
    When method GET
    Then status 200
    And match response[0] == {propertyName: '#present'}

  Scenario: Validating the response of the GET method for property by given property id and its value range (experimental)
    Given path '/chemical/property/experimental/search/by-range/Melting Point/150/151'
    When method GET
    Then status 200
    And match response[0] == {propValueOriginal: '#present', propValue: '#present', id: '#present', dtxsid: '#present', dtxcid: '#present', smiles: '#present', propName: '#present', dataset: '#present', propUnit: '#present', propValueId: '#present', propValueText: '#present', expDetailsTemperatureC: '#present', expDetailsPressureMmhg: '#present', expDetailsPh: '#present', expDetailsResponseSite: '#present', expDetailsSpeciesLatin: '#present', expDetailsSpeciesCommon: '#present', expDetailsSpeciesSupercategory: '#present', sourceName: '#present', sourceDescription: '#present', publicSourceName: '#present', publicSourceDescription: '#present', publicSourceUrl: '#present', directUrl: '#present', lsName: '#present', lsCitation: '#present', lsDoi: '#present', briefCitation: '#present', publicSourceOriginalName: '#present', publicSourceOriginalDescription: '#present', publicSourceOriginalUrl: '#present'}

  Scenario: Validating the response of the GET method for property by dtxsid (experimental)
    Given path '/chemical/property/experimental/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {propValueOriginal: '#present', propValue: '#present', id: '#present', dtxsid: '#present', dtxcid: '#present', smiles: '#present', propName: '#present', dataset: '#present', propUnit: '#present', propValueId: '#present', propValueText: '#present', expDetailsTemperatureC: '#present', expDetailsPressureMmhg: '#present', expDetailsPh: '#present', expDetailsResponseSite: '#present', expDetailsSpeciesLatin: '#present', expDetailsSpeciesCommon: '#present', expDetailsSpeciesSupercategory: '#present', sourceName: '#present', sourceDescription: '#present', publicSourceName: '#present', publicSourceDescription: '#present', publicSourceUrl: '#present', directUrl: '#present', lsName: '#present', lsCitation: '#present', lsDoi: '#present', briefCitation: '#present', publicSourceOriginalName: '#present', publicSourceOriginalDescription: '#present', publicSourceOriginalUrl: '#present'}

  Scenario: Validating the response of the POST method for chemical properties by batch dtxsid (experimental)
    Given url ccte + "/chemical/property/experimental/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {propValueOriginal: '#present', propValue: '#present', id: '#present', dtxsid: '#present', dtxcid: '#present', smiles: '#present', propName: '#present', dataset: '#present', propUnit: '#present', propValueId: '#present', propValueText: '#present', expDetailsTemperatureC: '#present', expDetailsPressureMmhg: '#present', expDetailsPh: '#present', expDetailsResponseSite: '#present', expDetailsSpeciesLatin: '#present', expDetailsSpeciesCommon: '#present', expDetailsSpeciesSupercategory: '#present', sourceName: '#present', sourceDescription: '#present', publicSourceName: '#present', publicSourceDescription: '#present', publicSourceUrl: '#present', directUrl: '#present', lsName: '#present', lsCitation: '#present', lsDoi: '#present', briefCitation: '#present', publicSourceOriginalName: '#present', publicSourceOriginalDescription: '#present', publicSourceOriginalUrl: '#present'}

  Scenario: Validating the response of the GET method for chemical properties by dtxsid (fate)
    Given path '/chemical/fate/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {propValueOriginal: '#present', propValue: '#present', id: '#present', dtxsid: '#present', dtxcid: '#present', smiles: '#present', propName: '#present', dataset: '#present', propUnit: '#present', propValueId: '#present', propValueText: '#present', expDetailsTemperatureC: '#present', expDetailsPressureMmhg: '#present', expDetailsPh: '#present', expDetailsResponseSite: '#present', expDetailsSpeciesLatin: '#present', expDetailsSpeciesCommon: '#present', expDetailsSpeciesSupercategory: '#present', sourceName: '#present', sourceDescription: '#present', publicSourceName: '#present', publicSourceDescription: '#present', publicSourceUrl: '#present', directUrl: '#present', lsName: '#present', lsCitation: '#present', lsDoi: '#present', briefCitation: '#present', publicSourceOriginalName: '#present', publicSourceOriginalDescription: '#present', publicSourceOriginalUrl: '#present'}

  Scenario: Validating the response of the POST method for chemical properties by batch dtxsid (fate)
    Given url ccte + "/chemical/fate/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {propValueOriginal: '#present', propValue: '#present', id: '#present', dtxsid: '#present', dtxcid: '#present', smiles: '#present', propName: '#present', dataset: '#present', propUnit: '#present', propValueId: '#present', propValueText: '#present', expDetailsTemperatureC: '#present', expDetailsPressureMmhg: '#present', expDetailsPh: '#present', expDetailsResponseSite: '#present', expDetailsSpeciesLatin: '#present', expDetailsSpeciesCommon: '#present', expDetailsSpeciesSupercategory: '#present', sourceName: '#present', sourceDescription: '#present', publicSourceName: '#present', publicSourceDescription: '#present', publicSourceUrl: '#present', directUrl: '#present', lsName: '#present', lsCitation: '#present', lsDoi: '#present', briefCitation: '#present', publicSourceOriginalName: '#present', publicSourceOriginalDescription: '#present', publicSourceOriginalUrl: '#present'}

  Scenario: Validating the response of the GET method for property ids by type (predicted)
    Given path '/chemical/property/predicted/name'
    When method GET
    Then status 200
    And match response[0] == {propertyName: '#present'}

  Scenario: Validating the response of the GET method for property by given property id and its value range (predicted)
    Given path '/chemical/property/predicted/search/by-range/Melting Point/150/151'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', dtxcid: '#present', smiles: '#present', canonQsarSmiles: '#present', genericSubstanceUpdatedAt: '#present', propName: '#present', propCategory: '#present', propDescription: '#present', modelName: '#present', modelId: '#present', sourceName: '#present', sourceDescription: '#present', propValueExperimental: '#present', propValueExperimentalString: '#present', propValue: '#present', propUnit: '#present', propValueString: '#present', propValueError: '#present', adMethod: '#present', adValue: '#present', adConclusion: '#present', adReasoning: '#present', adMethodGlobal: '#present', adValueGlobal: '#present', adConclusionGlobal: '#present', adReasoningGlobal: '#present', hasQmrf: '#present', qmrfUrl: '#present'}

  Scenario: Validating the response of the GET method for property by dtxsid (predicted)
    Given path '/chemical/property/predicted/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', dtxcid: '#present', smiles: '#present', canonQsarSmiles: '#present', genericSubstanceUpdatedAt: '#present', propName: '#present', propCategory: '#present', propDescription: '#present', modelName: '#present', modelId: '#present', sourceName: '#present', sourceDescription: '#present', propValueExperimental: '#present', propValueExperimentalString: '#present', propValue: '#present', propUnit: '#present', propValueString: '#present', propValueError: '#present', adMethod: '#present', adValue: '#present', adConclusion: '#present', adReasoning: '#present', adMethodGlobal: '#present', adValueGlobal: '#present', adConclusionGlobal: '#present', adReasoningGlobal: '#present', hasQmrf: '#present', qmrfUrl: '#present'}

  Scenario: Validating the response of the POST method for chemical properties by batch dtxsid (predicted)
    Given url ccte + "/chemical/property/predicted/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', dtxcid: '#present', smiles: '#present', canonQsarSmiles: '#present', genericSubstanceUpdatedAt: '#present', propName: '#present', propCategory: '#present', propDescription: '#present', modelName: '#present', modelId: '#present', sourceName: '#present', sourceDescription: '#present', propValueExperimental: '#present', propValueExperimentalString: '#present', propValue: '#present', propUnit: '#present', propValueString: '#present', propValueError: '#present', adMethod: '#present', adValue: '#present', adConclusion: '#present', adReasoning: '#present', adMethodGlobal: '#present', adValueGlobal: '#present', adConclusionGlobal: '#present', adReasoningGlobal: '#present', hasQmrf: '#present', qmrfUrl: '#present'}

  Scenario: Validating the response of the GET method for property by dtxsid (summary)
    Given path '/chemical/property/summary/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {propName: '#present', unit: '#present', experimentalAverage: '#present', experimentalMedian: '#present', experimentalRange: '#present', predictedAverage: '#present', predictedMedian: '#present', predictedRange: '#present'}

  Scenario: Validating the response of the GET method for property by dtxsid and property name (summary)
    Given url ccte + "/chemical/property/summary/search/"
    And param dtxsid = 'DTXSID7020182'
    And param propName = 'Density'
    When method GET
    Then status 200
    And match response[0] == {propName: '#present', unit: '#present', experimentalAverage: '#present', experimentalMedian: '#present', experimentalRange: '#present', predictedAverage: '#present', predictedMedian: '#present', predictedRange: '#present'}
