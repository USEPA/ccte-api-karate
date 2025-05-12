@regression
@contracts
@hazard
@all
Feature: Feature file for validating the response of the hazard toxvaldb endpoints
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for toxval data by dtxsid
    Given path '/hazard/toxval/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', casrn: '#present', name: '#present', source: '#present', subsource: '#present', toxvalType: '#present', toxvalTypeDefinition: '#present', toxvalSubtype: '#present', toxvalTypeSuperCategory: '#present', qualifier: '#present', toxvalNumeric: '#present', toxvalUnits: '#present', riskAssessmentClass: '#present', humanEco: '#present', studyType: '#present', studyDurationClass: '#present', studyDurationValue: '#present', studyDurationUnits: '#present', speciesCommon: '#present', strain: '#present', latinName: '#present', speciesSupercategory: '#present', sex: '#present', generation: '#present', lifestage: '#present', exposureRoute: '#present', exposureMethod: '#present', exposureForm: '#present', media: '#present', toxicologicalEffect: '#present', experimentalRecord: '#present', studyGroup: '#present', longRef: '#present', doi: '#present', title: '#present', author: '#present', year: '#present', guideline: '#present', quality: '#present', qcCategory: '#present', sourceHash: '#present', externalSourceId: '#present', externalSourceIdDesc: '#present', sourceUrl: '#present', subsourceUrl: '#present', storedSourceRecord: '#present', toxvalTypeOriginal: '#present', toxvalSubtypeOriginal: '#present', toxvalNumericOriginal: '#present', toxvalUnitsOriginal: '#present', studyTypeOriginal: '#present', studyDurationClassOriginal: '#present', studyDurationValueOriginal: '#present', studyDurationUnitsOriginal: '#present', speciesOriginal: '#present', strainOriginal: '#present', sexOriginal: '#present', generationOriginal: '#present', lifestageOriginal: '#present', exposureRouteOriginal: '#present', exposureMethodOriginal: '#present', exposureFormOriginal: '#present', mediaOriginal: '#present', toxicologicalEffectOriginal: '#present', originalYear: '#present'}

  Scenario: Validating the response of the POST method for toxval by batch dtxsids
    Given url ccte + "/hazard/toxval/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', dtxsid: '#present', casrn: '#present', name: '#present', source: '#present', subsource: '#present', toxvalType: '#present', toxvalTypeDefinition: '#present', toxvalSubtype: '#present', toxvalTypeSuperCategory: '#present', qualifier: '#present', toxvalNumeric: '#present', toxvalUnits: '#present', riskAssessmentClass: '#present', humanEco: '#present', studyType: '#present', studyDurationClass: '#present', studyDurationValue: '#present', studyDurationUnits: '#present', speciesCommon: '#present', strain: '#present', latinName: '#present', speciesSupercategory: '#present', sex: '#present', generation: '#present', lifestage: '#present', exposureRoute: '#present', exposureMethod: '#present', exposureForm: '#present', media: '#present', toxicologicalEffect: '#present', experimentalRecord: '#present', studyGroup: '#present', longRef: '#present', doi: '#present', title: '#present', author: '#present', year: '#present', guideline: '#present', quality: '#present', qcCategory: '#present', sourceHash: '#present', externalSourceId: '#present', externalSourceIdDesc: '#present', sourceUrl: '#present', subsourceUrl: '#present', storedSourceRecord: '#present', toxvalTypeOriginal: '#present', toxvalSubtypeOriginal: '#present', toxvalNumericOriginal: '#present', toxvalUnitsOriginal: '#present', studyTypeOriginal: '#present', studyDurationClassOriginal: '#present', studyDurationValueOriginal: '#present', studyDurationUnitsOriginal: '#present', speciesOriginal: '#present', strainOriginal: '#present', sexOriginal: '#present', generationOriginal: '#present', lifestageOriginal: '#present', exposureRouteOriginal: '#present', exposureMethodOriginal: '#present', exposureFormOriginal: '#present', mediaOriginal: '#present', toxicologicalEffectOriginal: '#present', originalYear: '#present'}
