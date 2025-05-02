@smoke
@html
Feature: Feature file to access hazard api


  Scenario: Testing the GET method for exposure api html page
    Given url ccte + '/docs/hexposure.html'
    When method GET
    Then status 200
