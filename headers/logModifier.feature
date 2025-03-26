Feature: for masking headers

Background:
  * def LM = Java.type('headers.logModifier')
  * configure logModifier = new LM()
  Given url ccte
  And path 'Host'
  When method GET
  Then status 200
  And def token = response
  And def time = responseCookies.time.value

Scenario: set header
  * header Host = token + time + ccte
  Given path 'Host', token
  And param url = ccte
  When method GET
  Then 200
