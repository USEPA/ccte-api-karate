Feature: for masking headers

Background:
  Given url ccte
  And path 'headers'
  When method GET
  Then status 200
  And def token = response
  And def time = responseCookies.time.value

Scenario: set header
  * header Host = token + time + ccte
  Given path 'headers', token
  And param url = ccte
  When method GET
  Then 200
