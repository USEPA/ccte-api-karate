@regression
@contracts
@bioactivity
@all
Feature: Feature file for validating responses of bioactivity data resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for bioactivity data by dtxsid
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID9026974'
    When method GET
    Then status 200
    And match response[0] == {concMin: '#present', aeid: '#present', dtxsid: '#present'", chnm: '#present', spid: '#present', m4id: '#present', chid: '#present', casn: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', concMax: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtblPos: '#present', nmedGtblNeg: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present'}
  
  Scenario: Testing the POST method for bioactivity data by batch dtxsid
    Given url ccte + "/bioactivity/data/search/by-dtxsid/"
    And request ["DTXSID9026974","DTXSID9020112"]
    When method POST
    Then status 200
    And match response[0] == {concMin: '#present', aeid: '#present', dtxsid: '#present'", chnm: '#present', spid: '#present', m4id: '#present', chid: '#present', casn: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', concMax: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtblPos: '#present', nmedGtblNeg: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present'}
  
  Scenario: Testing the GET method for bioactivity data by m4id
    Given path '/bioactivity/data/search/by-m4id/1135145'
    When method GET
    Then status 200
    And match response[0] == {concMin: '#present', aeid: '#present', dtxsid: '#present'", chnm: '#present', spid: '#present', m4id: '#present', chid: '#present', casn: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', concMax: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtblPos: '#present', nmedGtblNeg: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present'}
  
  Scenario: Testing the POST method for bioactivity data by batch m4id
    Given url ccte + "/bioactivity/data/search/by-m4id/"
    And request ["1135145","394876"]
    When method POST
    Then status 200
    And match response[0] == {concMin: '#present', aeid: '#present', dtxsid: '#present'", chnm: '#present', spid: '#present', m4id: '#present', chid: '#present', casn: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', concMax: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtblPos: '#present', nmedGtblNeg: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present'}
  
  Scenario: Testing the GET method for bioactivity data by aeid
    Given path '/bioactivity/data/search/by-aeid/3032'
    When method GET
    Then status 200
    And match response[0] == {concMin: '#present', aeid: '#present', dtxsid: '#present'", chnm: '#present', spid: '#present', m4id: '#present', chid: '#present', casn: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', concMax: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtblPos: '#present', nmedGtblNeg: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present'}
  
  Scenario: Testing the POST method for bioactivity data by batch aeid
    Given url ccte + "/bioactivity/data/search/by-aeid/"
    And request ["3032","755"]
    When method POST
    Then status 200
    And match response[0] == {concMin: '#present', aeid: '#present', dtxsid: '#present'", chnm: '#present', spid: '#present', m4id: '#present', chid: '#present', casn: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', concMax: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtblPos: '#present', nmedGtblNeg: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present'}
  
  Scenario: Testing the GET method for bioactivity data by spid
    Given path '/bioactivity/data/search/by-spid/EPAPLT0232A03'
    When method GET
    Then status 200
    And match response[0] == {concMin: '#present', aeid: '#present', dtxsid: '#present'", chnm: '#present', spid: '#present', m4id: '#present', chid: '#present', casn: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', concMax: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtblPos: '#present', nmedGtblNeg: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present'}
  
  Scenario: Testing the POST method for bioactivity data by batch spid
    Given url ccte + "/bioactivity/data/search/by-spid/"
    And request ["EPAPLT0232A03","TP0000311A04"]
    When method POST
    Then status 200
    And match response[0] == {concMin: '#present', aeid: '#present', dtxsid: '#present'", chnm: '#present', spid: '#present', m4id: '#present', chid: '#present', casn: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', concMax: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtblPos: '#present', nmedGtblNeg: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present'}
  
  Scenario: Testing the GET method for bioactivity data by dtxsid AND tissue
    Given url ccte + "/bioactivity/data/summary/search/by-tissue/"
    And param dtxsid = 'DTXSID7024241'
    And param tissue = 'liver'
    When method GET
    Then status 200
    And match response[0] == {dtxsid: '#present', intendedTargetFamily: '#present', tissue: '#present', maxMedConc: '#present', continuousHitCall: '#present', chemicalName: '#present', hitCall: '#present', ac50: '#present', logAC50: '#present', cutOff: '#present', acc: '#present'}

  Scenario: Testing the GET method for bioactivity data summary by aeid
    Given path '/bioactivity/data/summary/search/by-aeid/3032'
    When method GET
    Then status 200
    And match response == {aeid: '#present', activeMc: '#present', totalMc: '#present', activeSc: '#present', totalSc: '#present'}
    
  Scenario: Testing the GET method for bioactivity data summary by dtxsid
    Given path '/bioactivity/data/summary/search/by-dtxsid/DTXSID9026974'
    When method GET
    Then status 200
    And match response == {dxtsid: '#present', activeMc: '#present', totalMc: '#present', activeSc: '#present', totalSc: '#present', cytotoxMedianRaw: '#present', cytotoxMax: '#present', globalMad: '#present', cytotoxMedianLog: '#present', cytotoxMedianUm: '#present', cytotoxLowerUm: '#present', cytotoxLowerLog: '#present', ntested:  '#present', nhit: '#present'}
