@regression
@contracts
@all
@bioactivity
Feature: Feature file to validate responses of bioactivity data resource

  Background:
    * url ccte
    * header Host = ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for bioactivity data by dtxsid
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID9026974'
    When method GET
    Then status 200
    And match response[0] == {m4id: '#present', spid: '#present', chid: '#present', casn: '#present', chnm: '#present', dtxsid: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', logcMax: '#present', logcMin: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtbl: '#present', tmpi: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present', aeid: '#present'}

  Scenario: Testing the GET method for bioactivity data by m4id
    Given path '/bioactivity/data/search/by-m4id/1135145'
    When method GET
    Then status 200
    And match response == {m4id: '#present', spid: '#present', chid: '#present', casn: '#present', chnm: '#present', dtxsid: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', logcMax: '#present', logcMin: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtbl: '#present', tmpi: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present', aeid: '#present'}

  Scenario: Testing the GET method for bioactivity data by aeid
    Given path '/bioactivity/data/search/by-aeid/3032'
    When method GET
    Then status 200
    And match response[0] == {m4id: '#present', spid: '#present', chid: '#present', casn: '#present', chnm: '#present', dtxsid: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', logcMax: '#present', logcMin: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtbl: '#present', tmpi: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present', aeid: '#present'}

  Scenario: Testing the GET method for bioactivity data by spid
    Given path '/bioactivity/data/search/by-spid/EPAPLT0232A03'
    When method GET
    Then status 200
    And match response[0] == {m4id: '#present', spid: '#present', chid: '#present', casn: '#present', chnm: '#present', dtxsid: '#present', bmad: '#present', respMax: '#present', respMin: '#present', maxMean: '#present', maxMeanConc: '#present', maxMed: '#present', maxMedConc: '#present', logcMax: '#present', logcMin: '#present', nconc: '#present', npts: '#present', nrep: '#present', nmedGtbl: '#present', tmpi: '#present', m5id: '#present', modl: '#present', hitc: '#present', fitc: '#present', coff: '#present', actp: '#present', modelType: '#present', chidRep: '#present', stkc: '#present', stkcUnit: '#present', testedConcUnit: '#present', mc3Param: '#present', mc4Param: '#present', mc5Param: '#present', mc6Param: '#present', aeid: '#present'}

  Scenario: Testing the GET method for bioactivity data summary by aeid
    Given path '/bioactivity/data/summary/search/by-aeid/3032'
    When method GET
    Then status 200
    And match response == {aeid: '#present', activeMc: '#present', totalMc: '#present', activeSc: '#present', totalSc: '#present'}
