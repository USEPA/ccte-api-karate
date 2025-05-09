@regression
@contracts
@all
@chemical
Feature: Feature file for validating the response of chemical details resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for chemical details by dtxsid
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    When method GET
    Then status 200
    And match response == {id: '#present', pubchemCount: '#present', pubmedCount: '#present', sourcesCount: '#present', qcLevel: '#present', qcLevelDesc: '#present', stereo: '#present', isotope: '#present', multicomponent: '#present', totalAssays: '#present', toxcastSelect: '#present', pubchemCid: '#present', relatedSubstanceCount: '#present', relatedStructureCount: '#present', hasStructureImage: '#present', dtxsid: '#present', dtxcid: '#present', casrn: '#present', compoundId: '#present', genericSubstanceId: '#present', preferredName: '#present', activeAssays: '#present', cpdataCount: '#present', molFormula: '#present', monoisotopicMass: '#present', percentAssays: '#present', iupacName: '#present', smiles: '#present', inchiString: '#present', averageMass: '#present', inchikey: '#present', qcNotes: '#present', qsarReadySmiles: '#present', msReadySmiles: '#present', irisLink: '#present', pprtvLink: '#present', wikipediaArticle: '#present', descriptorStringTsv: '#present', isMarkush: '#present', expocatMedianPrediction: '#present', expocat: '#present', nhanes: '#present', toxvalData: '#present', waterSolubilityTest: '#present', waterSolubilityOpera: '#present', viscosityCpCpTestPred: '#present', vaporPressureMmhgTestPred: '#present', vaporPressureMmhgOperaPred: '#present', thermalConductivity: '#present', tetrahymenaPyriformis: '#present', surfaceTension: '#present', soilAdsorptionCoefficient: '#present', oralRatLd50Mol: '#present', operaKmDaysOperaPred: '#present', octanolWaterPartition: '#present', octanolAirPartitionCoeff: '#present', meltingPointDegcTestPred: '#present', meltingPointDegcOperaPred: '#present', hrFatheadMinnow: '#present', hrDiphniaLc50: '#present', henrysLawAtm: '#present', flashPointDegcTestPred: '#present', devtoxTestPred: '#present', density: '#present', boilingPointDegcTestPred: '#present', boilingPointDegcOperaPred: '#present', biodegradationHalfLifeDays: '#present', bioconcentrationFactorTestPred: '#present', bioconcentrationFactorOperaPred: '#present', atmosphericHydroxylationRate: '#present', amesMutagenicityTestPred: '#present', pkaaOperaPred: '#present', pkabOperaPred: '#present'}

  Scenario: Validating the response of the POST method for chemical details by batch dtxsid
    Given url ccte + "/chemical/detail/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', pubchemCount: '#present', pubmedCount: '#present', sourcesCount: '#present', qcLevel: '#present', qcLevelDesc: '#present', stereo: '#present', isotope: '#present', multicomponent: '#present', totalAssays: '#present', toxcastSelect: '#present', pubchemCid: '#present', relatedSubstanceCount: '#present', relatedStructureCount: '#present', hasStructureImage: '#present', dtxsid: '#present', dtxcid: '#present', casrn: '#present', compoundId: '#present', genericSubstanceId: '#present', preferredName: '#present', activeAssays: '#present', cpdataCount: '#present', molFormula: '#present', monoisotopicMass: '#present', percentAssays: '#present', iupacName: '#present', smiles: '#present', inchiString: '#present', averageMass: '#present', inchikey: '#present', qcNotes: '#present', qsarReadySmiles: '#present', msReadySmiles: '#present', irisLink: '#present', pprtvLink: '#present', wikipediaArticle: '#present', descriptorStringTsv: '#present', isMarkush: '#present', expocatMedianPrediction: '#present', expocat: '#present', nhanes: '#present', toxvalData: '#present', waterSolubilityTest: '#present', waterSolubilityOpera: '#present', viscosityCpCpTestPred: '#present', vaporPressureMmhgTestPred: '#present', vaporPressureMmhgOperaPred: '#present', thermalConductivity: '#present', tetrahymenaPyriformis: '#present', surfaceTension: '#present', soilAdsorptionCoefficient: '#present', oralRatLd50Mol: '#present', operaKmDaysOperaPred: '#present', octanolWaterPartition: '#present', octanolAirPartitionCoeff: '#present', meltingPointDegcTestPred: '#present', meltingPointDegcOperaPred: '#present', hrFatheadMinnow: '#present', hrDiphniaLc50: '#present', henrysLawAtm: '#present', flashPointDegcTestPred: '#present', devtoxTestPred: '#present', density: '#present', boilingPointDegcTestPred: '#present', boilingPointDegcOperaPred: '#present', biodegradationHalfLifeDays: '#present', bioconcentrationFactorTestPred: '#present', bioconcentrationFactorOperaPred: '#present', atmosphericHydroxylationRate: '#present', amesMutagenicityTestPred: '#present', pkaaOperaPred: '#present', pkabOperaPred: '#present'}

  Scenario: Validating the response of the Error Message: GET method for chemical details by dtxsid (wrong projection)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'chemicaldetailstandard1'
    When method GET
    Then status 400
    And match response == {type: "about:blank", title: "Bad Request", status: 400, detail: "Failed to convert 'projection' with value: 'chemicaldetailstandard1'", instance: "/chemical/detail/search/by-dtxsid/DTXSID20144773"}

  Scenario: Validating the response of the Error Message: GET method for chemical details by dtxsid (wrong dtxsid)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID777x'
    When method GET
    Then status 400
    And match response == {type: "about:blank", title: "Bad Request", status: 400, detail: "dtxsid with value DTXSID777x not found.", instance: "/chemical/detail/search/by-dtxsid/DTXSID777x"}

  Scenario: Validating the response of the GET method for chemical details by dtxcid
    Given path '/chemical/detail/search/by-dtxcid/DTXCID40210'
    When method GET
    Then status 200
    And match response == {id: '#present', pubchemCount: '#present', pubmedCount: '#present', sourcesCount: '#present', qcLevel: '#present', qcLevelDesc: '#present', stereo: '#present', isotope: '#present', multicomponent: '#present', totalAssays: '#present', toxcastSelect: '#present', pubchemCid: '#present', relatedSubstanceCount: '#present', relatedStructureCount: '#present', hasStructureImage: '#present', dtxsid: '#present', dtxcid: '#present', casrn: '#present', compoundId: '#present', genericSubstanceId: '#present', preferredName: '#present', activeAssays: '#present', cpdataCount: '#present', molFormula: '#present', monoisotopicMass: '#present', percentAssays: '#present', iupacName: '#present', smiles: '#present', inchiString: '#present', averageMass: '#present', inchikey: '#present', qcNotes: '#present', qsarReadySmiles: '#present', msReadySmiles: '#present', irisLink: '#present', pprtvLink: '#present', wikipediaArticle: '#present', descriptorStringTsv: '#present', isMarkush: '#present', expocatMedianPrediction: '#present', expocat: '#present', nhanes: '#present', toxvalData: '#present', waterSolubilityTest: '#present', waterSolubilityOpera: '#present', viscosityCpCpTestPred: '#present', vaporPressureMmhgTestPred: '#present', vaporPressureMmhgOperaPred: '#present', thermalConductivity: '#present', tetrahymenaPyriformis: '#present', surfaceTension: '#present', soilAdsorptionCoefficient: '#present', oralRatLd50Mol: '#present', operaKmDaysOperaPred: '#present', octanolWaterPartition: '#present', octanolAirPartitionCoeff: '#present', meltingPointDegcTestPred: '#present', meltingPointDegcOperaPred: '#present', hrFatheadMinnow: '#present', hrDiphniaLc50: '#present', henrysLawAtm: '#present', flashPointDegcTestPred: '#present', devtoxTestPred: '#present', density: '#present', boilingPointDegcTestPred: '#present', boilingPointDegcOperaPred: '#present', biodegradationHalfLifeDays: '#present', bioconcentrationFactorTestPred: '#present', bioconcentrationFactorOperaPred: '#present', atmosphericHydroxylationRate: '#present', amesMutagenicityTestPred: '#present', pkaaOperaPred: '#present', pkabOperaPred: '#present'}

  Scenario: Validating the response of the POST method for chemical details by batch dtxcid
    Given url ccte + "/chemical/detail/search/by-dtxcid/"
    And request batchdtxcid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', pubchemCount: '#present', pubmedCount: '#present', sourcesCount: '#present', qcLevel: '#present', qcLevelDesc: '#present', stereo: '#present', isotope: '#present', multicomponent: '#present', totalAssays: '#present', toxcastSelect: '#present', pubchemCid: '#present', relatedSubstanceCount: '#present', relatedStructureCount: '#present', hasStructureImage: '#present', dtxsid: '#present', dtxcid: '#present', casrn: '#present', compoundId: '#present', genericSubstanceId: '#present', preferredName: '#present', activeAssays: '#present', cpdataCount: '#present', molFormula: '#present', monoisotopicMass: '#present', percentAssays: '#present', iupacName: '#present', smiles: '#present', inchiString: '#present', averageMass: '#present', inchikey: '#present', qcNotes: '#present', qsarReadySmiles: '#present', msReadySmiles: '#present', irisLink: '#present', pprtvLink: '#present', wikipediaArticle: '#present', descriptorStringTsv: '#present', isMarkush: '#present', expocatMedianPrediction: '#present', expocat: '#present', nhanes: '#present', toxvalData: '#present', waterSolubilityTest: '#present', waterSolubilityOpera: '#present', viscosityCpCpTestPred: '#present', vaporPressureMmhgTestPred: '#present', vaporPressureMmhgOperaPred: '#present', thermalConductivity: '#present', tetrahymenaPyriformis: '#present', surfaceTension: '#present', soilAdsorptionCoefficient: '#present', oralRatLd50Mol: '#present', operaKmDaysOperaPred: '#present', octanolWaterPartition: '#present', octanolAirPartitionCoeff: '#present', meltingPointDegcTestPred: '#present', meltingPointDegcOperaPred: '#present', hrFatheadMinnow: '#present', hrDiphniaLc50: '#present', henrysLawAtm: '#present', flashPointDegcTestPred: '#present', devtoxTestPred: '#present', density: '#present', boilingPointDegcTestPred: '#present', boilingPointDegcOperaPred: '#present', biodegradationHalfLifeDays: '#present', bioconcentrationFactorTestPred: '#present', bioconcentrationFactorOperaPred: '#present', atmosphericHydroxylationRate: '#present', amesMutagenicityTestPred: '#present', pkaaOperaPred: '#present', pkabOperaPred: '#present'}

  Scenario: Validating the response of the Error Message: GET method for chemical details by dtxcid (wrong dtxcid)
    Given path '/chemical/detail/search/by-dtxcid/DTXCID30182x'
    When method GET
    Then status 400
    And match response == {type: "about:blank", title: "Bad Request", status: 400, detail: "dtxcid with value DTXCID30182x not found.", instance: "/chemical/detail/search/by-dtxcid/DTXCID30182x"}

  Scenario: Validating the response of the GET method for ALL chemical details
    Given path 'chemical/all'
    When method GET
    Then status 200
    And match response == {size: '#present', total: '#present', next: '#present', data: '#present'}

  Scenario: Validating the response of the GET method for ALL chemical details (projection = all-ids)
    Given path 'chemical/all'
    And param projeciton = 'all-ids'
    When method GET
    Then status 200
    And match response == {size: '#present', total: '#present', next: '#present', data: '#present'}

#Projection checks

  Scenario: Validating the response of the GET method for chemical details by dtxcid (projection = chemicaldetailall)
    Given path '/chemical/detail/search/by-dtxcid/DTXCID40210'
    And param projection = 'chemicaldetailall'
    When method GET
    Then status 200
    And match response == {id: '#present', pubchemCount: '#present', pubmedCount: '#present', sourcesCount: '#present', qcLevel: '#present', qcLevelDesc: '#present', stereo: '#present', isotope: '#present', multicomponent: '#present', totalAssays: '#present', toxcastSelect: '#present', pubchemCid: '#present', relatedSubstanceCount: '#present', relatedStructureCount: '#present', hasStructureImage: '#present', dtxsid: '#present', dtxcid: '#present', casrn: '#present', compoundId: '#present', genericSubstanceId: '#present', preferredName: '#present', activeAssays: '#present', cpdataCount: '#present', molFormula: '#present', monoisotopicMass: '#present', percentAssays: '#present', iupacName: '#present', smiles: '#present', inchiString: '#present', averageMass: '#present', inchikey: '#present', qcNotes: '#present', qsarReadySmiles: '#present', msReadySmiles: '#present', irisLink: '#present', pprtvLink: '#present', wikipediaArticle: '#present', descriptorStringTsv: '#present', isMarkush: '#present', expocatMedianPrediction: '#present', expocat: '#present', nhanes: '#present', toxvalData: '#present', waterSolubilityTest: '#present', waterSolubilityOpera: '#present', viscosityCpCpTestPred: '#present', vaporPressureMmhgTestPred: '#present', vaporPressureMmhgOperaPred: '#present', thermalConductivity: '#present', tetrahymenaPyriformis: '#present', surfaceTension: '#present', soilAdsorptionCoefficient: '#present', oralRatLd50Mol: '#present', operaKmDaysOperaPred: '#present', octanolWaterPartition: '#present', octanolAirPartitionCoeff: '#present', meltingPointDegcTestPred: '#present', meltingPointDegcOperaPred: '#present', hrFatheadMinnow: '#present', hrDiphniaLc50: '#present', henrysLawAtm: '#present', flashPointDegcTestPred: '#present', devtoxTestPred: '#present', density: '#present', boilingPointDegcTestPred: '#present', boilingPointDegcOperaPred: '#present', biodegradationHalfLifeDays: '#present', bioconcentrationFactorTestPred: '#present', bioconcentrationFactorOperaPred: '#present', atmosphericHydroxylationRate: '#present', amesMutagenicityTestPred: '#present', pkaaOperaPred: '#present', pkabOperaPred: '#present'}

  Scenario: Validating the response of the GET method for chemical details by dtxsid (projection = chemicaldetailstandard)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'chemicaldetailstandard'
    When method GET
    Then status 200
    And match response == {id: '#present', pubchemCount: '#present', pubmedCount: '#present', sourcesCount: '#present', qcLevel: '#present', qcLevelDesc: '#present', isotope: '#present', multicomponent: '#present', totalAssays: '#present', toxcastSelect: '#present', pubchemCid: '#present', relatedSubstanceCount: '#present', relatedStructureCount: '#present', hasStructureImage: '#present', dtxsid: '#present', dtxcid: '#present', casrn: '#present', compoundId: '#present', genericSubstanceId: '#present', preferredName: '#present', activeAssays: '#present', cpdataCount: '#present', molFormula: '#present', monoisotopicMass: '#present', percentAssays: '#present', iupacName: '#present', smiles: '#present', inchiString: '#present', inchikey: '#present', qcNotes: '#present', qsarReadySmiles: '#present', msReadySmiles: '#present', irisLink: '#present', pprtvLink: '#present', wikipediaArticle: '#present', descriptorStringTsv: '#present', isMarkush: '#present'}

  Scenario: Validating the response of the GET method for chemical details by dtxsid (projection = chemicalidentifier)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'chemicalidentifier'
    When method GET
    Then status 200
    And match response == {dtxsid: '#present', dtxcid: '#present', casrn: '#present', preferredName: '#present', iupacName: '#present', inchikey: '#present'}

  Scenario: Validating the response of the GET method for chemical details by dtxsid (projection = chemicalstructure)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'chemicalstructure'
    When method GET
    Then status 200
    And match response == {id: '#present', hasStructureImage: '#present', dtxsid: '#present', dtxcid: '#present', casrn: '#present', preferredName: '#present', smiles: '#present', inchiString: '#present', inchikey: '#present', qsarReadySmiles: '#present', msReadySmiles: '#present'}

  Scenario: Validating the response of the GET method for chemical details by dtxcid (projection = ntatoolkit)
    Given path '/chemical/detail/search/by-dtxcid/DTXCID40210'
    And param projection = 'ntatoolkit'
    When method GET
    Then status 200
    And match response == {sourcesCount: '#present', totalAssays: '#present', dtxsid: '#present', dtxcid: '#present', casrn: '#present', preferredName: '#present', activeAssays: '#present', cpdataCount: '#present', molFormula: '#present', monoisotopicMass: '#present', percentAssays: '#present', smiles: '#present', inchikey: '#present', msReadySmiles: '#present', expocatMedianPrediction: '#present', expocat: '#present', nhanes: '#present'}

  Scenario: Validating the response of the GET method for chemical details by dtxsid (projection = ccdchemicaldetails) 
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'ccdchemicaldetails'
    When method GET
    Then status 200
    And match response == {id: '#present', pubchemCount: '#present', pubmedCount: '#present', sourcesCount: '#present', qcLevel: '#present', qcLevelDesc: '#present', isotope: '#present', multicomponent: '#present', totalAssays: '#present', toxcastSelect: '#present', pubchemCid: '#present', relatedSubstanceCount: '#present', relatedStructureCount: '#present', hasStructureImage: '#present', dtxsid: '#present', dtxcid: '#present', casrn: '#present', compoundId: '#present', genericSubstanceId: '#present', preferredName: '#present', activeAssays: '#present', cpdataCount: '#present', molFormula: '#present', monoisotopicMass: '#present', percentAssays: '#present', iupacName: '#present', smiles: '#present', inchiString: '#present', averageMass: '#present', inchikey: '#present', qcNotes: '#present', qsarReadySmiles: '#present', msReadySmiles: '#present', irisLink: '#present', pprtvLink: '#present', wikipediaArticle: '#present', isMarkush: '#present'}

  Scenario: Validating the response of the GET method for chemical details by dtxsid (projection = compact)
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And param projection = 'compact'
    When method GET
    Then status 200
    And match response == {dtxsid: '#present', casrn: '#present', preferredName: '#present'}
