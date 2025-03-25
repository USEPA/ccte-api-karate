function() {
    var env = karate.env // get java system property from karate.env 'env'
    var key = karate.properties['key'] // get karate config property from karate.env 'key'
    var fake = karate.properties['fake'] // get karate.config property from karate.env 'fake'
    var localDev = karate.properties['localDev'].trim() // get karate.config property from karate.env 'localDev'
    var localStg = karate.properties['localStg'].trim() // get karate.config property from karate.env 'localStg'
    karate.log('karate.env selected environment was:', env);
    karate.configure("ssl", true)
    karate.configure("host", false)

    if (!env) {
    env = 'prod'; // env can be either ctx-local-dev or ctx-local-stg.
    }

  // base config
  var config = {
	env: env,
    ccte: `https://api-ccte.epa.gov`,
    apikey: key,
    batchdtxsid: `["DTXSID7020182","DTXSID9020112"]`,
    fakekey: fake,
        mol: `
  Mrv1805 07292016252D          

  0  0  0     0  0            999 V3000
M  V30 BEGIN CTAB
M  V30 COUNTS 17 18 0 0 0
M  V30 BEGIN ATOM
M  V30 1 C 4.3641 -1.0888 0 0
M  V30 2 C 5.453 -2.1778 0 0
M  V30 3 C 6.9306 -1.8407 0 0
M  V30 4 C 7.9936 -2.9555 0 0
M  V30 5 C 7.5529 -4.4504 0 0
M  V30 6 C 6.0665 -4.8048 0 0
M  V30 7 C 4.995 -3.6814 0 0
M  V30 8 O 8.6417 -5.5394 0 0
M  V30 9 C 3.2752 -2.1778 0 0
M  V30 10 C 3.6727 -3.6727 0 0
M  V30 11 C 2.5839 -4.7616 0 0
M  V30 12 C 1.0888 -4.3641 0 0
M  V30 13 C 0.6914 -2.8778 0 0
M  V30 14 C 1.7802 -1.7802 0 0
M  V30 15 O 0 -5.453 0 0
M  V30 16 C 5.936 0.4487 0 0
M  V30 17 C 2.8753 0.4306 0 0
M  V30 END ATOM
M  V30 BEGIN BOND
M  V30 1 1 1 2
M  V30 2 1 1 9
M  V30 3 2 2 3
M  V30 4 1 2 7
M  V30 5 1 3 4
M  V30 6 2 4 5
M  V30 7 1 5 6
M  V30 8 1 5 8
M  V30 9 2 6 7
M  V30 10 2 9 10
M  V30 11 1 9 14
M  V30 12 1 10 11
M  V30 13 2 11 12
M  V30 14 1 12 13
M  V30 15 1 12 15
M  V30 16 2 13 14
M  V30 17 1 1 16
M  V30 18 1 1 17
M  V30 END BOND
M  V30 END CTAB
M  END
`,
  }
  // switch environment
  if (env === 'ctx-local-dev')
  {
    config.ccte = localDev;
  }
  else if (env === 'ctx-local-stg')
  {
    config.ccte = localStg;
    config.batchdtxsid = `["DTXSID00542076","DTXSID101199124"]`;
  }

    karate.configure('connectTimeout', 60000);
    karate.configure('readTimeout', 60000);

    return config;
}
