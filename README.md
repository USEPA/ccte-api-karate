<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/USEPA/ccte-api-karate/tree/main/images">
    <img src="images/karate.jpg" alt="Logo" width="500" height="200">
  </a>
  
<h1 align="center">Computational Toxicology and Exposure Data APIs</h1>
<h3 align="center">Performance Testing with Karate Framework</h3>
</div>
<br>
Karate framework follows the Cucumber style of writing the program which follows the BDD approach. The syntax is easy to understand by non-programmers. And this framework is the only API testing tool that has combined API Automation and performance testing into a single standalone tool.
<br><br>
We will be using Karate to perform Smoke, Regression, CORS, and Security tests on the CCTE APIs. Both Smoke and Regression tests are labeled with the appropriate Tags. CORS and Security are referenced by directory.
<br>
<h3 align="center">Smoke Testing</h3>

Tests labeled `Smoke` are designed to validate individual features in each API. They call on available features and return the HTTP Response status code. The typical expected response is status 200 or OK status.
<br>
<h3 align="center">Regression Testing</h3>

Tests labeled `Regression` are designed to validate the responses of individual features in each API. They call on available features and verify that the responses contain the correct labels. Labels vary depending on the variables contained in the data being requested. This is not to be confused with data validation, we are only checking that the responses contain the correct variables. The content of those variables is being ignored.
<br>
<h3 align="center">CORS Testing</h3>

These tests are designed to verify that the Origin of the requests are permitted to access the APIs. Cross-Origin Resource Sharing (CORS) is an HTTP-header based mechanism that allows a server to indicate any origins (domain, scheme, or port) other than its own from which a browser should permit loading resources. CORS also relies on a mechanism by which browsers make a "preflight" request to the server hosting the cross-origin resource, in order to check that the server will permit the actual request. In that preflight, the browser sends headers that indicate the HTTP method and headers that will be used in the actual request. 
<br>
<h3 align="center">Security Testing</h3>

These tests are designed to ensure proper acceptance of API keys necessary to access API features. Data should only be pulled if the API keys are accepted and return an error if they are not. I have used Github's `Secret` feature to reference my own API key and attempted pushing a fake key (listed in plain text) to test for failure. The `API_KEY` can be found in the karate-config file under the variable `apikey`. The use of `Secret` is only for potential automation with actions in the furute. Otherwise, it would have been left blank.
