@smoke
@bioactivity
Feature: Feature file to access bioactivity api


  Scenario: Testing the GET method for bioactivity api html page
    Given url ccte + '/docs/bioactivity.html'
    When method GET
    Then status 200
