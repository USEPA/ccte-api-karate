@regression
@contracts
@hazard
@all
Feature: Feature file for validating the response of the toxref resources

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey
    
  ############ Data ############

  Scenario: Validating the response of the GET method for toxref data by dtxsid
    Given path '/hazard/toxref/data/search/by-dtxsid/DTXSID9020112'
    When method GET
    Then status 200
    And match response[0] == {studyId: '#present', dtxsid: '#present', casrn: '#present', name: '#present', studySource: '#present', studySourceId: '#present', citation: '#present', studyYear: '#present', studyType: '#present', studyTypeGuideline: '#present', species: '#present', strainGroup: '#present', strain: '#present', adminRoute: '#present', adminMethod: '#present', doseDuration: '#present', doseDurationUnit: '#present', doseStart: '#present', doseStartUnit: '#present', doseEnd: '#present', doseEndUnit: '#present', dosePeriod: '#present', doseLevel: '#present', conc: '#present', concUnit: '#present', vehicle: '#present', doseComment: '#present', doseAdjusted: '#present', doseAdjustedUnit: '#present', sex: '#present', generation: '#present', lifeStage: '#present', numAnimals: '#present', tgComment: '#present', endpointCategory: '#present', endpointType: '#present', endpointTarget: '#present', effectDesc: '#present', effectDescFree: '#present', cancerRelated: '#present', targetSite: '#present', direction: '#present', effectComment: '#present', treatmentRelated: '#present', criticalEffect: '#present', sampleSize: '#present', effectVal: '#present', effectValUnit: '#present', effectVar: '#present', effectVarType: '#present', time: '#present', timeUnit: '#present', noQuantDataReported: '#present', exportDate: '#present', version: '#present'}

  Scenario: Validating the response of the GET method for toxref data by study id
    Given path '/hazard/toxref/data/search/by-study-id/2122'
    When method GET
    Then status 200
    And match response[0] == {studyId: '#present', dtxsid: '#present', casrn: '#present', name: '#present', studySource: '#present', studySourceId: '#present', citation: '#present', studyYear: '#present', studyType: '#present', studyTypeGuideline: '#present', species: '#present', strainGroup: '#present', strain: '#present', adminRoute: '#present', adminMethod: '#present', doseDuration: '#present', doseDurationUnit: '#present', doseStart: '#present', doseStartUnit: '#present', doseEnd: '#present', doseEndUnit: '#present', dosePeriod: '#present', doseLevel: '#present', conc: '#present', concUnit: '#present', vehicle: '#present', doseComment: '#present', doseAdjusted: '#present', doseAdjustedUnit: '#present', sex: '#present', generation: '#present', lifeStage: '#present', numAnimals: '#present', tgComment: '#present', endpointCategory: '#present', endpointType: '#present', endpointTarget: '#present', effectDesc: '#present', effectDescFree: '#present', cancerRelated: '#present', targetSite: '#present', direction: '#present', effectComment: '#present', treatmentRelated: '#present', criticalEffect: '#present', sampleSize: '#present', effectVal: '#present', effectValUnit: '#present', effectVar: '#present', effectVarType: '#present', time: '#present', timeUnit: '#present', noQuantDataReported: '#present', exportDate: '#present', version: '#present'}


  Scenario: Validating the response of the GET method for toxref data by study type (paging)
    Given path '/hazard/toxref/data/search/by-study-type/CHR'
    And param pageNumber = '1'
    When method GET
    Then status 200
    And match response == {studyType: '#present', totalRecords: '#present', recordsOnPage: '#present', pageNumber: '#present', totalPages: '#present', data: '#present'}

  ############ Effects ############

  Scenario: Validating the response of the GET method for toxref effects by dtxsid
    Given path '/hazard/toxref/effects/search/by-dtxsid/DTXSID9020112'
    When method GET
    Then status 200
    And match response[0] == {studyId: '#present', dtxsid: '#present', casrn: '#present', name: '#present', studySource: '#present', studySourceId: '#present', citation: '#present', studyYear: '#present', studyType: '#present', studyTypeGuideline: '#present', species: '#present', strainGroup: '#present', strain: '#present', adminRoute: '#present', adminMethod: '#present', doseDuration: '#present', doseDurationUnit: '#present', doseStart: '#present', doseStartUnit: '#present', doseEnd: '#present', doseEndUnit: '#present', dosePeriod: '#present', doseLevel: '#present', conc: '#present', concUnit: '#present', vehicle: '#present', doseComment: '#present', doseAdjusted: '#present', doseAdjustedUnit: '#present', sex: '#present', generation: '#present', lifeStage: '#present', numAnimals: '#present', tgComment: '#present', endpointCategory: '#present', endpointType: '#present', endpointTarget: '#present', effectDesc: '#present', effectDescFree: '#present', cancerRelated: '#present', targetSite: '#present', direction: '#present', effectComment: '#present', treatmentRelated: '#present', criticalEffect: '#present', sampleSize: '#present', effectVal: '#present', effectValUnit: '#present', effectVar: '#present', effectVarType: '#present', time: '#present', timeUnit: '#present', noQuantDataReported: '#present', exportDate: '#present', version: '#present', id: '#present'}

  Scenario: Validating the response of the GET method for toxref effects by study id
    Given path '/hazard/toxref/effects/search/by-study-id/2122'
    When method GET
    Then status 200
    And match response[0] == {studyId: '#present', dtxsid: '#present', casrn: '#present', name: '#present', studySource: '#present', studySourceId: '#present', citation: '#present', studyYear: '#present', studyType: '#present', studyTypeGuideline: '#present', species: '#present', strainGroup: '#present', strain: '#present', adminRoute: '#present', adminMethod: '#present', doseDuration: '#present', doseDurationUnit: '#present', doseStart: '#present', doseStartUnit: '#present', doseEnd: '#present', doseEndUnit: '#present', dosePeriod: '#present', doseLevel: '#present', conc: '#present', concUnit: '#present', vehicle: '#present', doseComment: '#present', doseAdjusted: '#present', doseAdjustedUnit: '#present', sex: '#present', generation: '#present', lifeStage: '#present', numAnimals: '#present', tgComment: '#present', endpointCategory: '#present', endpointType: '#present', endpointTarget: '#present', effectDesc: '#present', effectDescFree: '#present', cancerRelated: '#present', targetSite: '#present', direction: '#present', effectComment: '#present', treatmentRelated: '#present', criticalEffect: '#present', sampleSize: '#present', effectVal: '#present', effectValUnit: '#present', effectVar: '#present', effectVarType: '#present', time: '#present', timeUnit: '#present', noQuantDataReported: '#present', exportDate: '#present', version: '#present', id: '#present'}

  Scenario: Validating the response of the GET method for toxref effects by study type (paging)
    Given path '/hazard/toxref/effects/search/by-study-type/CHR'
    And param pageNumber = '1'
    When method GET
    Then status 200
    And match response == {studyType: '#present', totalRecords: '#present', recordsOnPage: '#present', pageNumber: '#present', totalPages: '#present', data: '#present'}

  ############ Observations ############

  Scenario: Validating the response of the GET method for toxref observations by dtxsid
    Given path '/hazard/toxref/observations/search/by-dtxsid/DTXSID9020112'
    When method GET
    Then status 200
    And match response[0] == {studyId: '#present', dtxsid: '#present', casrn: '#present', name: '#present', studyType: '#present', guidelineNumber: '#present', guidelineName: '#present', endpointCategory: '#present', endpointType: '#present', endpointTarget: '#present', status: '#present', defaultStatus: '#present', testedStatus: '#present', reportedStatus: '#present', exportDate: '#present', version: '#present'}

  Scenario: Validating the response of the GET method for toxref observations by study id
    Given path '/hazard/toxref/observations/search/by-study-id/2122'
    When method GET
    Then status 200
    And match response[0] == {studyId: '#present', dtxsid: '#present', casrn: '#present', name: '#present', studyType: '#present', guidelineNumber: '#present', guidelineName: '#present', endpointCategory: '#present', endpointType: '#present', endpointTarget: '#present', status: '#present', defaultStatus: '#present', testedStatus: '#present', reportedStatus: '#present', exportDate: '#present', version: '#present'}

  Scenario: Validating the response of the GET method for toxref observations by study type (paging)
    Given path '/hazard/toxref/observations/search/by-study-type/CHR'
    And param pageNumber = '1'
    When method GET
    Then status 200
    And match response == {studyType: '#present', totalRecords: '#present', recordsOnPage: '#present', pageNumber: '#present', totalPages: '#present', data: '#present'}

  ############ Summary ############

  Scenario: Validating the response of the GET method for toxref summary by dtxsid
    Given path '/hazard/toxref/summary/search/by-dtxsid/DTXSID9020112'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', studyId: '#present', dtxsid: '#present', casrn: '#present', name: '#present', studySource: '#present', studySourceId: '#present', citation: '#present', studyYear: '#present', studyType: '#present', studyTypeGuideline: '#present', species: '#present', strainGroup: '#present', strain: '#present', adminRoute: '#present', adminMethod: '#present', doseStart: '#present', doseStartUnit: '#present', doseEnd: '#present', doseEndUnit: '#present', exportDate: '#present', version: '#present'}

  Scenario: Validating the response of the GET method for toxref summary by study id
    Given path '/hazard/toxref/summary/search/by-study-id/2122'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', studyId: '#present', dtxsid: '#present', casrn: '#present', name: '#present', studySource: '#present', studySourceId: '#present', citation: '#present', studyYear: '#present', studyType: '#present', studyTypeGuideline: '#present', species: '#present', strainGroup: '#present', strain: '#present', adminRoute: '#present', adminMethod: '#present', doseStart: '#present', doseStartUnit: '#present', doseEnd: '#present', doseEndUnit: '#present', exportDate: '#present', version: '#present'}

  Scenario: Validating the response of the GET method for toxref summary by study type
    Given path '/hazard/toxref/summary/search/by-study-type/DEV'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', studyId: '#present', dtxsid: '#present', casrn: '#present', name: '#present', studySource: '#present', studySourceId: '#present', citation: '#present', studyYear: '#present', studyType: '#present', studyTypeGuideline: '#present', species: '#present', strainGroup: '#present', strain: '#present', adminRoute: '#present', adminMethod: '#present', doseStart: '#present', doseStartUnit: '#present', doseEnd: '#present', doseEndUnit: '#present', exportDate: '#present', version: '#present'}

  ############ Batch ############

  Scenario: Validating the response of the GET method for toxref data by batch dtxsids
    Given url ccte + "/hazard/toxref/search/by-dtxsid/"
    And request ["DTXSID5034307","DTXSID2040363"]
    When method POST
    Then status 200
    And match response[0] == {studyId: '#present', dtxsid: '#present', casrn: '#present', name: '#present', studySource: '#present', studySourceId: '#present', citation: '#present', studyYear: '#present', studyType: '#present', studyTypeGuideline: '#present', species: '#present', strainGroup: '#present', strain: '#present', adminRoute: '#present', adminMethod: '#present', doseDuration: '#present', doseDurationUnit: '#present', doseStart: '#present', doseStartUnit: '#present', doseEnd: '#present', doseEndUnit: '#present', dosePeriod: '#present', doseLevel: '#present', conc: '#present', concUnit: '#present', vehicle: '#present', doseComment: '#present', doseAdjusted: '#present', doseAdjustedUnit: '#present', sex: '#present', generation: '#present', lifeStage: '#present', numAnimals: '#present', tgComment: '#present', endpointCategory: '#present', endpointType: '#present', endpointTarget: '#present', effectDesc: '#present', effectDescFree: '#present', cancerRelated: '#present', targetSite: '#present', direction: '#present', effectComment: '#present', treatmentRelated: '#present', criticalEffect: '#present', sampleSize: '#present', effectVal: '#present', effectValUnit: '#present', effectVar: '#present', effectVarType: '#present', time: '#present', timeUnit: '#present', noQuantDataReported: '#present', tbsKey: '#present'}
