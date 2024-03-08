function() {
    var env = karate.env; // get java system property 'karate.env'

    karate.log('karate.env selected environment was:', env);
    karate.configure("ssl", true)

    if (!env) {
    env = 'dev'; // env can be anything: dev, qa, staging, etc.
    }

  // base config
  var config = {
	env: env,
    ccte: `https://api-ccte.epa.gov`,
    apikey: `API_KEY`,
    batchdtxsid: `["DTXSID7020182","DTXSID9020112"]`
  }
  // switch environment
  if (env == 'stg')
  {
    config.ccte = `https://api-ccte-stg.epa.gov`
  }
  else if (env == 'prod')
  {
    config.ccte = `https://api-ccte-prod.epa.gov`
  }

    karate.configure('connectTimeout', 60000);
    karate.configure('readTimeout', 60000);

    return config;
}
