@smoke
Feature: Feature file to access exposure api


  Scenario: Testing the GET method for exposure api html page
    Given url 'https://api-ccte.epa.gov/docs/exposure.html'
    When method GET
    Then status 200
