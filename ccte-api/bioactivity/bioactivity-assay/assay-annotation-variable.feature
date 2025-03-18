@regression
@contracts
Feature: Feature file to validate responses of bioactivity assay annotation resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for assay annotation by aeid
    Given path '/bioactivity/assay/search/by-aeid/3032'
    When method GET
    Then status 200
    And match response == {aeid: '#present', assayComponentEndpointName: '#present', exportReady: '#present', internalReady: '#present', assayComponentEndpointDesc: '#present', assayFunctionType: '#present', normalizedDataType: '#present', burstAssay: '#present', keyPositiveControl: '#present', signalDirection: '#present', intendedTargetType: '#present', intendedTargetTypeSub: '#present', intendedTargetFamily: '#present', intendedTargetFamilySub: '#present', cellViabilityAssay: '#present', dataUsability: '#present', acid: '#present', assayComponentName: '#present', assayComponentDesc: '#present', assayComponentTargetDesc: '#present', parameterReadoutType: '#present', assayDesignType: '#present', assayDesignTypeSub: '#present', biologicalProcessTarget: '#present', detectionTechnologyType: '#present', detectionTechnologyTypeSub: '#present', detectionTechnology: '#present', keyAssayReagentType: '#present', keyAssayReagent: '#present', technologicalTargetType: '#present', technologicalTargetTypeSub: '#present', aid: '#present', assayName: '#present', assayDesc: '#present', timepointHr: '#present', organismId: '#present', organism: '#present', tissue: '#present', cellFormat: '#present', cellFreeComponentSource: '#present', cellShortName: '#present', cellGrowthMode: '#present', assayFootprint: '#present', assayFormatType: '#present', assayFormatTypeSub: '#present', contentReadoutType: '#present', dilutionSolvent: '#present', dilutionSolventPercentMax: '#present', asid: '#present', assaySourceName: '#present', assaySourceLongName: '#present', assaySourceDesc: '#present', gene: '#present', assayList: '#present', citations: '#present'}

  Scenario: Testing the POST method to get ALL assay annotation by aeid
    Given url ccte + "/bioactivity/assay/"
    When method GET
    And match response[0] == {aeid: '#present', assayComponentEndpointName: '#present', exportReady: '#present', internalReady: '#present', assayComponentEndpointDesc: '#present', assayFunctionType: '#present', normalizedDataType: '#present', burstAssay: '#present', keyPositiveControl: '#present', signalDirection: '#present', intendedTargetType: '#present', intendedTargetTypeSub: '#present', intendedTargetFamily: '#present', intendedTargetFamilySub: '#present', cellViabilityAssay: '#present', dataUsability: '#present', acid: '#present', assayComponentName: '#present', assayComponentDesc: '#present', assayComponentTargetDesc: '#present', parameterReadoutType: '#present', assayDesignType: '#present', assayDesignTypeSub: '#present', biologicalProcessTarget: '#present', detectionTechnologyType: '#present', detectionTechnologyTypeSub: '#present', detectionTechnology: '#present', keyAssayReagentType: '#present', keyAssayReagent: '#present', technologicalTargetType: '#present', technologicalTargetTypeSub: '#present', aid: '#present', assayName: '#present', assayDesc: '#present', timepointHr: '#present', organismId: '#present', organism: '#present', tissue: '#present', cellFormat: '#present', cellFreeComponentSource: '#present', cellShortName: '#present', cellGrowthMode: '#present', assayFootprint: '#present', assayFormatType: '#present', assayFormatTypeSub: '#present', contentReadoutType: '#present', dilutionSolvent: '#present', dilutionSolventPercentMax: '#present', asid: '#present', assaySourceName: '#present', assaySourceLongName: '#present', assaySourceDesc: '#present', gene: '#present', assayList: '#present', citations: '#present'}
