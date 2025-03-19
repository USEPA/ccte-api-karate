@smoke
@html
Feature: Feature file to access hazard api


  Scenario: Testing the GET method for hazard api html page (only available on dev/prod)
    Given url ccte + '/docs/hazard.html'
    When method GET
    Then status 200
