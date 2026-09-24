function fn() {
    var properties = karate.properties;
    var system = java.lang.System;
    var property = function (name, environmentName) {
      return properties[name] || (environmentName ? system.getenv(environmentName) : null);
    };
    var env = (karate.env || property('env', 'KARATE_ENV') || 'dev').trim().toLowerCase();
    var key = property('key', 'API_KEY') || system.getenv('X_API_KEY');
    karate.log('karate.env selected environment was:', env);

  // base config
  var config = {
	env: env,
    apikey: key,
    batchdtxsid: `["DTXSID7020182","DTXSID9020112"]`,
    batchdtxcid: `["DTXCID30182","DTXCID90112"]`,
    fakekey: property('fake', 'FAKE_KEY') || `00000000-0000-0000-0000-000000000000`,
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

  // switch environment with sensible defaults
  if (env === 'dev')
  {
    config.ccte = `https://ctx-api-dev.ccte.epa.gov`;
    config.host = `ctx-api-dev.ccte.epa.gov`;
  }
  else if (env === 'stg' || env === 'staging')
  {
    config.ccte = `https://ctx-api-stg.ccte.epa.gov`;
    config.host = `ctx-api-stg.ccte.epa.gov`;
  } else if (env === 'main' || env === 'prod') {
    config.ccte = `https://api-ccte.epa.gov`;
    config.host = `api-ccte.epa.gov`;
  } else if (env === 'ctx-local-dev' || env === 'local-dev') {
    config.ccte = property('localDev', 'LOCAL_DEV_URL');
    config.host = property('hostDev', 'LOCAL_DEV_HOST');
  } else if (env === 'ctx-local-stg' || env === 'local-stg') {
    config.ccte = property('localStg', 'LOCAL_STG_URL');
    config.host = property('hostStg', 'LOCAL_STG_HOST');
  }
  
  // Explicit base overrides take precedence over environment-specific defaults.
  config.ccte = (property('baseUrl', 'BASE_URL') || config.ccte).trim();
  config.host = (property('baseHost', 'BASE_HOST') || config.host).trim();

  karate.configure('connectTimeout', 60000);
  karate.configure('readTimeout', 60000);

  return config;
}
