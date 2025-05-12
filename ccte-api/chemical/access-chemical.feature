@smoke
@html
Feature: Feature file to access chemical api


  Scenario: Testing the GET method for chemical api html page
    Given url ccte + '/docs/chemical.html'
    When method GET
    Then status 200
