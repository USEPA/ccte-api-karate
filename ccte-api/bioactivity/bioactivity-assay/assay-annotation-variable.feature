@regression
@contracts
@bioactivity
@all
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
    And match response == [{aeid: '#present', assayName: '#present', assayComponentName: '#present', assayComponentEndpointName: '#present', assayComponentEndpointDesc: '#present', assayFunctionType: '#present', normalizedDataType: '#present', burstAssay: '#present', keyPositiveControl: '#present', signalDirection: '#present', intendedTargetType: '#present', intendedTargetTypeSub: '#present', intendedTargetFamily: '#present', intendedTargetFamilySub: '#present', cellViabilityAssay: '#present', acid: '#present', assayComponentDesc: '#present', assayComponentTargetDesc: '#present', parameterReadoutType: '#present', assayDesignType: '#present', assayDesignTypeSub: '#present', biologicalProcessTarget: '#present', detectionTechnologyType: '#present', detectionTechnologyTypeSub: '#present', detectionTechnology: '#present', keyAssayReagentType: '#present', keyAssayReagent: '#present', technologicalTargetType: '#present', technologicalTargetTypeSub: '#present', aid: '#present', assayDesc: '#present', timepointHr: '#present', organismId: '#present', organism: '#present', tissue: '#present', cellFormat: '#present', cellFreeComponentSource: '#present', cellShortName: '#present', cellGrowthMode: '#present', assayFootprint: '#present', assayFormatType: '#present', assayFormatTypeSub: '#present', contentReadoutType: '#present', dilutionSolvent: '#present', dilutionSolventPercentMax: '#present', asid: '#present', assaySourceName: '#present', assaySourceLongName: '#present', assaySourceDesc: '#present', gene: '#present', assayList: '#present', citations: '#present'}]

  Scenario: Testing the POST method to get ALL assay annotation by aeid
    Given url ccte + "/bioactivity/assay/"
    When method GET
    And match response[0] == {aeid: '#present', assayName: '#present', assayComponentName: '#present', assayComponentEndpointName: '#present', assayComponentEndpointDesc: '#present', assayFunctionType: '#present', normalizedDataType: '#present', burstAssay: '#present', keyPositiveControl: '#present', signalDirection: '#present', intendedTargetType: '#present', intendedTargetTypeSub: '#present', intendedTargetFamily: '#present', intendedTargetFamilySub: '#present', cellViabilityAssay: '#present', acid: '#present', assayComponentDesc: '#present', assayComponentTargetDesc: '#present', parameterReadoutType: '#present', assayDesignType: '#present', assayDesignTypeSub: '#present', biologicalProcessTarget: '#present', detectionTechnologyType: '#present', detectionTechnologyTypeSub: '#present', detectionTechnology: '#present', keyAssayReagentType: '#present', keyAssayReagent: '#present', technologicalTargetType: '#present', technologicalTargetTypeSub: '#present', aid: '#present', assayDesc: '#present', timepointHr: '#present', organismId: '#present', organism: '#present', tissue: '#present', cellFormat: '#present', cellFreeComponentSource: '#present', cellShortName: '#present', cellGrowthMode: '#present', assayFootprint: '#present', assayFormatType: '#present', assayFormatTypeSub: '#present', contentReadoutType: '#present', dilutionSolvent: '#present', dilutionSolventPercentMax: '#present', asid: '#present', assaySourceName: '#present', assaySourceLongName: '#present', assaySourceDesc: '#present', gene: '#present', assayList: '#present', citations: '#present'}

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-annotation)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-annotation'
    When method GET
    Then status 200
    And match response == [{aeid: '#present', assayName: '#present', assayComponentName: '#present', assayComponentEndpointName: '#present', assayComponentEndpointDesc: '#present', assayFunctionType: '#present', normalizedDataType: '#present', burstAssay: '#present', keyPositiveControl: '#present', signalDirection: '#present', intendedTargetType: '#present', intendedTargetTypeSub: '#present', intendedTargetFamily: '#present', intendedTargetFamilySub: '#present',  assayComponentDesc: '#present', assayComponentTargetDesc: '#present', parameterReadoutType: '#present', assayDesignType: '#present', assayDesignTypeSub: '#present', biologicalProcessTarget: '#present', detectionTechnologyType: '#present', detectionTechnologyTypeSub: '#present', detectionTechnology: '#present', keyAssayReagentType: '#present', keyAssayReagent: '#present', technologicalTargetType: '#present', technologicalTargetTypeSub: '#present', assayDesc: '#present', timepointHr: '#present', organism: '#present', tissue: '#present', cellFormat: '#present', cellFreeComponentSource: '#present', cellShortName: '#present', cellGrowthMode: '#present', assayFootprint: '#present', assayFormatType: '#present', assayFormatTypeSub: '#present', contentReadoutType: '#present', dilutionSolvent: '#present', dilutionSolventPercentMax: '#present', assaySourceName: '#present', assaySourceLongName: '#present', assaySourceDesc: '#present', toxCastAssayDescription: '#present'}]

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-gene)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-gene'
    When method GET
    Then status 200
    And match response == [{entrezGeneId: '#present', geneName: '#present', geneSymbol: '#present'}]

  Scenario: Testing the GET method for assay data by aeid (projection ccd-assay-citations)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-citations'
    When method GET
    Then status 200
    And match response[0] == {title: '#present', url: '#present', aeid: '#present', assayComponentEndpointName: '#present', doi: '#present', pmid: '#present', author: '#present', citation: '#present', otherId: '#present', otherSource: '#present'}

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-tcpl-processing)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-tcpl-processing'
    When method GET
    Then status 200
    And match response[0] == {methodName: '#present', description: '#present', orderId: '#present', assayRunType: '#present', levelApplied: '#present'}

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-reagents)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-reagents'
    When method GET
    Then status 200
    And match response == [{orderId: '#present', reagentType: '#present', reagentValue: '#present', cultureOrAssay: '#present'}]

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-aop)
    Given path '/bioactivity/assay/search/by-aeid/711'
    And param projection = 'ccd-assay-aop'
    When method GET
    Then status 200
    And match response[0] == {toxcastAeid: '#present', entrezGeneId: '#present', eventNumber: '#present', eventLink: '#present', aopNumber: '#present', aopLink: '#present'}

  Scenario: Testing the GET method for assay data by aeid (projection = assay-all)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'assay-all'
    When method GET
    Then status 200
    And match response == [{aeid: '#present', assayName: '#present', assayComponentName: '#present', assayComponentEndpointName: '#present', assayComponentEndpointDesc: '#present', assayFunctionType: '#present', normalizedDataType: '#present', burstAssay: '#present', keyPositiveControl: '#present', signalDirection: '#present', intendedTargetType: '#present', intendedTargetTypeSub: '#present', intendedTargetFamily: '#present', intendedTargetFamilySub: '#present', cellViabilityAssay: '#present', acid: '#present', assayComponentDesc: '#present', assayComponentTargetDesc: '#present', parameterReadoutType: '#present', assayDesignType: '#present', assayDesignTypeSub: '#present', biologicalProcessTarget: '#present', detectionTechnologyType: '#present', detectionTechnologyTypeSub: '#present', detectionTechnology: '#present', keyAssayReagentType: '#present', keyAssayReagent: '#present', technologicalTargetType: '#present', technologicalTargetTypeSub: '#present', aid: '#present', assayDesc: '#present', timepointHr: '#present', organismId: '#present', organism: '#present', tissue: '#present', cellFormat: '#present', cellFreeComponentSource: '#present', cellShortName: '#present', cellGrowthMode: '#present', assayFootprint: '#present', assayFormatType: '#present', assayFormatTypeSub: '#present', contentReadoutType: '#present', dilutionSolvent: '#present', dilutionSolventPercentMax: '#present', asid: '#present', assaySourceName: '#present', assaySourceLongName: '#present', assaySourceDesc: '#present', gene: '#present', assayList: '#present', citations: '#present'}]

  Scenario: Testing the GET method for assay endpoints list by gene symbol
    Given path '/bioactivity/assay/search/by-gene/TUBA1A'
    When method GET
    Then status 200
    And match response[0] == {geneSymbol: '#present', assayComponentEndpointName: '#present', assayComponentEndpointDesc: '#present', multiConcActives: '#present', singleConcActive: '#present'}

  Scenario: Testing the GET method for assay single-conc data by aeid 
    Given path '/bioactivity/assay/single-conc/search/by-aeid/3032'
    When method GET
    Then status 200
    And match response[0] == {s2id: '#present', aeid: '#present', spid: '#present', chid: '#present', casn: '#present', chnm: '#present', dsstoxSubstanceId: '#present', bmad: '#present', maxMed: '#present', coff: '#present', hitc: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', sc1Param: '#present', exportDate: '#present', dataVersion: '#present'}

  Scenario: Testing the GET method for assay data by aeid (projection = single-conc)
    Given path '/bioactivity/assay/single-conc/search/by-aeid/3032'
    And param projection = 'single-conc'
    When method GET
    Then status 200
    And match response[0] == {s2id: '#present', aeid: '#present', spid: '#present', chid: '#present', casn: '#present', chnm: '#present', dsstoxSubstanceId: '#present', bmad: '#present', maxMed: '#present', coff: '#present', hitc: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', sc1Param: '#present', exportDate: '#present', dataVersion: '#present'}

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-single-conc)
    Given path '/bioactivity/assay/single-conc/search/by-aeid/3032'
    And param projection = 'ccd-single-conc'
    When method GET
    Then status 200
    And match response[0] == {aeid: '#present', preferredName: '#present', dtxsid: '#present', s2id: '#present', casn: '#present', bmad: '#present', hitc: '#present', coff: '#present', endpointName: '#present', maxMedVal: '#present'}

  Scenario: Testing the GET method for getting all assay annotations
    Given url ccte + "/bioactivity/assay/"
    When method GET
    Then status 200
    And match response[0] == {aeid: '#present', assayName: '#present', assayComponentName: '#present', assayComponentEndpointName: '#present', assayComponentEndpointDesc: '#present', assayFunctionType: '#present', normalizedDataType: '#present', burstAssay: '#present', keyPositiveControl: '#present', signalDirection: '#present', intendedTargetType: '#present', intendedTargetTypeSub: '#present', intendedTargetFamily: '#present', intendedTargetFamilySub: '#present', cellViabilityAssay: '#present', acid: '#present', assayComponentDesc: '#present', assayComponentTargetDesc: '#present', parameterReadoutType: '#present', assayDesignType: '#present', assayDesignTypeSub: '#present', biologicalProcessTarget: '#present', detectionTechnologyType: '#present', detectionTechnologyTypeSub: '#present', detectionTechnology: '#present', keyAssayReagentType: '#present', keyAssayReagent: '#present', technologicalTargetType: '#present', technologicalTargetTypeSub: '#present', aid: '#present', assayDesc: '#present', timepointHr: '#present', organismId: '#present', organism: '#present', tissue: '#present', cellFormat: '#present', cellFreeComponentSource: '#present', cellShortName: '#present', cellGrowthMode: '#present', assayFootprint: '#present', assayFormatType: '#present', assayFormatTypeSub: '#present', contentReadoutType: '#present', dilutionSolvent: '#present', dilutionSolventPercentMax: '#present', asid: '#present', assaySourceName: '#present', assaySourceLongName: '#present', assaySourceDesc: '#present', gene: '#present', assayList: '#present', citations: '#present'}

  Scenario: Testing the GET method for getting all assay annotations (projection = ccd-assay-list)
    Given url ccte + "/bioactivity/assay/"
    And param projection = 'ccd-assay-list'
    When method GET
    Then status 200
    And match response[0] == {vendorKey: '#present', vendorName: '#present', assayName: '#present', aeid: '#present', assayComponentName: '#present', assayComponentEndpointName: '#present', assayComponentEndpointDesc: '#present', ccdAssayDetail: '#present', commonName: '#present', taxonName: '#present', assayList: '#present', geneArray: '#present', singleConc: '#present', multiConc: '#present'}
    
