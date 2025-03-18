@regression
@business
Feature: Feature file for validating response data of chemical search startwith resource
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name
    Given path '/chemical/search/start-with/Atrazine-2'
    When method GET
    Then status 200
    And match response[0] == {"casrn": "126919-71-9", "preferredName": "Atrazine-2-Ethoxy", "dtxsid": "DTXSID301016617", "dtxcid": "DTXCID201474808", "searchName": "Approved Name", "searchValue": "Atrazine-2-Ethoxy", "rank": 9, "hasStructureImage": 1, "smiles": "CCNC1=NC(NC(C)C)=NC(OCC)=N1", "isMarkush": false}

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name
    Given path '/chemical/search/start-with/triethyl lead'
    When method GET
    Then status 200
    And match response[0] == {"casrn": "5224-23-7", "preferredName": "Triethyl lead", "dtxsid": "DTXSID20200282", "dtxcid": "DTXCID0012217", "searchName": "Approved Name", "searchValue": "Triethyl lead", "rank": 9, "hasStructureImage": 1, "smiles": "CC[PbH](CC)CC", "isMarkush": false}

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name starting with a space
    Given path '/chemical/search/start-with/ Atrazine-2'
    When method GET
    Then status 200
    And match response[0] == {"casrn": "126919-71-9", "preferredName": "Atrazine-2-Ethoxy", "dtxsid": "DTXSID301016617", "dtxcid": "DTXCID201474808", "searchName": "Approved Name", "searchValue": "Atrazine-2-Ethoxy", "rank": 9, "hasStructureImage": 1, "smiles": "CCNC1=NC(NC(C)C)=NC(OCC)=N1", "isMarkush": false}

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name starting with a (-)
    Given path '/chemical/search/start-with/(-)'
    When method GET
    Then status 200
    And match response[0] == {"isMarkush": true, "searchName": "Approved Name", "searchValue": "(-)-10-Norparvulenone", "rank": 9, "dtxsid": "DTXSID601346897", "dtxcid": null, "casrn": "313661-79-9", "preferredName": "(-)-10-Norparvulenone", "hasStructureImage": 0, "smiles": null}

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name
    Given path '/chemical/search/start-with/polysorbate'
    When method GET
    Then status 200
    And match response[0] == {"casrn": "9005-64-5", "preferredName": "Polysorbate 20", "dtxsid": "DTXSID3031949", "dtxcid": null, "searchName": "Approved Name", "searchValue": "Polysorbate 20", "rank": 9, "hasStructureImage": 0, "smiles": null, "isMarkush": true}

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name
    Given path '/chemical/search/start-with/jwh-007'
    When method GET
    Then status 200
    And match response[0] == {"casrn": "155471-10-6", "preferredName": "JWH-007", "dtxsid": "DTXSID20165903", "dtxcid": "DTXCID9088394", "searchName": "Approved Name", "searchValue": "JWH-007", "rank": 9, "hasStructureImage": 1, "smiles": "CCCCCN1C(C)=C(C(=O)C2=CC=CC3=CC=CC=C23)C2=CC=CC=C12", "isMarkush": false}

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name (space instead of (-))
    Given path '/chemical/search/start-with/jwh 007'
    When method GET
    Then status 200
    And match response[0] == {"casrn": "155471-10-6", "preferredName": "JWH-007", "dtxsid": "DTXSID20165903", "dtxcid": "DTXCID9088394", "searchName": "Approved Name", "searchValue": "JWH-007", "rank": 9, "hasStructureImage": 1, "smiles": "CCCCCN1C(C)=C(C(=O)C2=CC=CC3=CC=CC=C23)C2=CC=CC=C12", "isMarkush": false}

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name (url encoded)
    Given url ccte + "/chemical/search/start-with/jwh%20007"
    When method GET
    Then status 200
    And match response[0] == {"casrn": "155471-10-6", "preferredName": "JWH-007", "dtxsid": "DTXSID20165903", "dtxcid": "DTXCID9088394", "searchName": "Approved Name", "searchValue": "JWH-007", "rank": 9, "hasStructureImage": 1, "smiles": "CCCCCN1C(C)=C(C(=O)C2=CC=CC3=CC=CC=C23)C2=CC=CC=C12", "isMarkush": false}

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name
    Given path '/chemical/search/start-with/C 15'
    When method GET
    Then status 200
    And match response[0] == {"casrn": "12725-34-7", "preferredName": "C 15", "dtxsid": "DTXSID20155485", "dtxcid": "DTXCID6077976", "searchName": "Approved Name", "searchValue": "C 15", "rank": 9, "hasStructureImage": 1, "smiles": "Cl.Cl.COC1=CC2=C(NCCCCN(C)C)C3=C(C=C(Br)C=C3)N=C2C=C1", "isMarkush": false}

  Scenario: Validating response data using the GET method for chemical search by starting value of casrn in ECHA database (data missing)
    Given path '/chemical/search/start-with/253-558-4'
    When method GET
    Then status 400
    And match response == {"type": "about:blank", "title": "Bad Request", "status": 400, "detail": "Searched by Synonym: Found 0 results for '253-558-4'.", "instance": "/chemical/search/start-with/253-558-4", "suggestions": ["253-511-8", "253-053-9", "253-750-8", "253-751-3", "250-657-4", "255-508-7", "256-555-6", "256-557-7", "256-150-4", "259-550-7", "258-552-5", "258-958-2", "254-158-2", "254-118-4", "203-751-4", "200-508-4", "200-758-4", "213-568-1", "223-658-2", "263-657-4", "288-538-4", "243-654-4", "249-559-4", "943-548-4"]}

  Scenario: Validating response data using the GET method for chemical search by starting value of InChIKey
    Given path '/chemical/search/start-with/OBETXYAYXDNJHR-BKUSUEPDSA-N'
    When method GET
    Then status 200
    And match response[0] == {"casrn": "352431-38-0", "preferredName": "2-(~2~H_5_)Ethyl(~2~H_10_)hexanoic acid", "dtxsid": "DTXSID00745904", "dtxcid": "DTXCID40696648", "searchName": "InChIKey", "searchValue": "OBETXYAYXDNJHR-BKUSUEPDSA-N", "rank": 13, "hasStructureImage": 1, "smiles": "[2H]C([2H])([2H])C([2H])([2H])C([2H])([2H])C([2H])([2H])C([2H])(C(O)=O)C([2H])([2H])C([2H])([2H])[2H]", "isMarkush": false}
  
  Scenario: Validating response data using the GET method for chemical search by starting value of InChIKey (url encoded)
    Given url ccte + "/chemical/search/start-with/1S%252FC3H6O%252Fc1-3%282%294%252Fh1-2H3"
    When method GET
    Then status 400
    And match response == {"type": "about:blank", "title": "Bad Request", "status": 400, "detail": "Searched by Synonym: Found 0 results for '1S%2FC3H6O%2Fc1-3(2)4%2Fh1-2H3'.", "instance": "/chemical/search/start-with/1S%252FC3H6O%252Fc1-3%282%294%252Fh1-2H3", "suggestions": [null]}

  Scenario: Validating response data using the GET method for chemical search by starting value of CASRN (wrong dash)
    Given path '/chemical/search/start-with/76–16-4'
    When method GET
    Then status 200
    And match response[0] == {"casrn": "76-16-4", "preferredName": "Perfluoroethane", "dtxsid": "DTXSID2041915", "dtxcid": "DTXCID0021915", "searchName": "CASRN", "searchValue": "76-16-4", "rank": 5, "hasStructureImage": 1, "smiles": "FC(F)(F)C(F)(F)F", "isMarkush": false}

  Scenario: Validating response data using the GET method for chemical search by starting value of CASRN (wrong checksum)
    Given path '/chemical/search/start-with/7728-50-5'
    When method GET
    Then status 400
    And match response == {"type":"about:blank", "title":"Bad Request", "status":400,"detail":"Searched by CASRN: Found 0 results for '7728-50-5'.\nCAS number fails checksum.", "instance":"/chemical/search/start-with/7728-50-5", "suggestions":[null]}

  @ignore
  Scenario: Validating response data using the POST method for chemical search using different types of values (no Match)
    Given url ccte + "/chemical/search/equal/"
    And request 'Biphsenol A, 80057, 000008057, 80/05/7, 80-50-7, 00080750'
    When method POST
    Then status 200
    And match response == {{"dtxsid": null, "dtxcid": null, "casrn": null, "smiles": null, "preferredName": null, "searchName": null, "searchValue": "BIPHSENOL A", "rank": null, "hasStructureImage": null, "isMarkush": null, "searchMsgs": ["Searched by Synonym: Found 0 results for 'BIPHSENOL A'."], "suggestions": ["biphenol a"], "isDuplicate": false}, {"dtxsid": "DTXSID7020182", "dtxcid": "DTXCID30182", "casrn": "80-05-7", "smiles": "CC(C)(C1=CC=C(O)C=C1)C1=CC=C(O)C=C1", "preferredName": "Bisphenol A", "searchName": "CASRN", "searchValue": "80057", "rank": 5, "hasStructureImage": 1, "isMarkush": false, "searchMsgs": null, "suggestions": null, "isDuplicate": false}, {"dtxsid": null, "dtxcid": null, "casrn": null, "smiles": null, "preferredName": null, "searchName": null, "searchValue": "000008057", "rank": null, "hasStructureImage": null, "isMarkush": null, "searchMsgs": ["Searched by Synonym: Found 0 results for '000008057'."], "suggestions": [null], "isDuplicate": false}, {"dtxsid": null, "dtxcid": null, "casrn": null, "smiles": null, "preferredName": null, "searchName": null, "searchValue": "80/05/7", "rank": null, "hasStructureImage": null, "isMarkush": null, "searchMsgs": ["Searched by Synonym: Found 0 results for '80/05/7'."], "suggestions": [null], "isDuplicate": false}, {"dtxsid": null, "dtxcid": null, "casrn": null, "smiles": null, "preferredName": null, "searchName": null, "searchValue": "80-50-7", "rank": null, "hasStructureImage": null, "isMarkush": null, "searchMsgs": ["Searched by CASRN: Found 0 results for '80-50-7'.","CAS number fails checksum."], "suggestions": [null], "isDuplicate": false}, {"dtxsid": null, "dtxcid": null, "casrn": null, "smiles": null, "preferredName": null, "searchName": null, "searchValue": "00080750", "rank": null, "hasStructureImage": null, "isMarkush": null, "searchMsgs": ["Searched by Synonym: Found 0 results for '00080750'."], "suggestions": [null], "isDuplicate": false}}

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name
    Given path '/chemical/search/start-with/Triethyl lead'
    When method GET
    Then status 200
    And match response[0] == {"casrn": "5224-23-7", "preferredName": "Triethyl lead", "dtxsid": "DTXSID20200282", "dtxcid": "DTXCID0012217", "searchName": "Approved Name", "searchValue": "Triethyl lead", "rank": 9, "hasStructureImage": 1, "smiles": "CC[PbH](CC)CC", "isMarkush": false}

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name
    Given path '/chemical/search/start-with/toluene'
    When method GET
    Then status 200
    And match response[0] == {"isMarkush": false, "searchName": "Approved Name", "searchValue": "Toluene", "rank": 9, "dtxsid": "DTXSID7021360", "dtxcid": "DTXCID501360", "casrn": "108-88-3", "preferredName": "Toluene", "hasStructureImage": 1,"smiles": "CC1=CC=CC=C1"}  

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name (spelling mistake)
    Given path '/chemical/search/start-with/para-Chloronitrobenzene'
    When method GET
    Then status 400
    And match response == {"type": "about:blank", "title": "Bad Request", "status": 400, "detail": "Searched by Synonym: Found 0 results for 'para-Chloronitrobenzene'.", "instance": "/chemical/search/start-with/para-Chloronitrobenzene", "suggestions": ["para-fluoronitrobenzene", "p-chloronitrobenzene"]}

  Scenario: Validating response data using the GET method for chemical search by starting value of InChIKey (spelling mistake)
    Given path '/chemical/search/start-with/HVYWMOMLDIMFJA-DPAQBDIFSA-M'
    When method GET
    Then status 400
    And match response == {"type": "about:blank", "title": "Bad Request", "status": 400, "detail": "Searched by InChI Key: Found 0 results for 'HVYWMOMLDIMFJA-DPAQBDIFSA-M'.", "instance": "/chemical/search/start-with/HVYWMOMLDIMFJA-DPAQBDIFSA-M", "suggestions":  ["HVYWMOMLDIMFJA-DPAQBDIFSA-N"]}

  Scenario: Validating response data using the GET method for chemical search (Opsin result) unrecognized character
    Given path '/chemical/search/start-with/di(cholest-5-en-3β-yl) decanedioate'
    When method GET
    Then status 400
    And match response == {"type": "about:blank", "title": "Bad Request", "status": 400, "detail": "Searched by Synonym: Found 0 results for 'di(cholest-5-en-3β-yl) decanedioate'.", "instance": "/chemical/search/start-with/di(cholest-5-en-3%CE%B2-yl)%20decanedioate", "suggestions": ["WUHFQANUEHARLW-VXOVUZAMSA-N"]}

  Scenario: Validating response data using the GET method for chemical search exact match DTXSID
    Given path '/chemical/search/start-with/DTXSID7051216'
    When method GET
    Then status 200
    And match response[0] == {"isMarkush": true, "searchName": "DSSTox_Substance_Id", "searchValue": "DTXSID7051216", "rank": 1, "dtxsid": "DTXSID7051216", "dtxcid": null, "casrn": "1333-86-4", "preferredName": "Carbon black", "hasStructureImage": 0, "smiles": null}

  Scenario: Validating response data using the GET method for chemical search CASRN with dashes
    Given path '/chemical/search/start-with/71-43-2'
    When method GET
    Then status 200
    And match response[0] == {"isMarkush": false, "searchName": "CASRN", "searchValue": "71-43-2", "rank": 5, "dtxsid": "DTXSID3039242", "dtxcid": "DTXCID20135", "casrn": "71-43-2", "preferredName": "Benzene", "hasStructureImage": 1, "smiles": "C1=CC=CC=C1"}

  Scenario: Validating response data using the GET method for chemical search CASRN without dashes
    Given path '/chemical/search/start-with/71432'
    When method GET
    Then status 200
    And match response == [{"dtxsid": "DTXSID3039242", "dtxcid": "DTXCID20135", "casrn": "71-43-2", "preferredName": "Benzene", "hasStructureImage": 1, "smiles": "C1=CC=CC=C1", "isMarkush": false, "searchName": "CASRN", "searchValue": "71432", "rank": 5}]

  Scenario: Validating response data using the GET method for chemical search by starting value of chemical name (url encoded)
    Given url ccte + "/chemical/search/start-with/1-Naphthalenesulfonic%20acid%2C%203-hydroxy-4-%5B%282-hydroxy-1-naphthalenyl%29azo%5D-%2C%20chromium%20complex"
    When method GET
    Then status 200
    And match response[0] == {"hasStructureImage":1,"smiles":"[H+].[Na+].[Na+].[Cr+3].[O-]C1=C(N=NC2=C([O-])C=C(C3=C2C=CC=C3)S([O-])(=O)=O)C2=C(C=CC=C2)C=C1.[O-]C1=C(N=NC2=C([O-])C=C(C3=C2C=CC=C3)S([O-])(=O)=O)C2=C(C=CC=C2)C=C1","isMarkush":false,"searchName":"Synonym","searchValue":"1-Naphthalenesulfonic acid, 3-hydroxy-4-[(2-hydroxy-1-naphthalenyl)azo]-, chromium complex","rank":15,"dtxsid":"DTXSID20904273","dtxcid":"DTXCID901333477","casrn":"12392-64-2","preferredName":"C.I. Acid Blue 193"}
