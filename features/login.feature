Feature: Login
    When user goes to login page and tries to login,
    the result should be welcome page if the login information is valid,
    otherwise result should be error page
      
Background: Go to login page
    Given that user has gone to the login page
    
Scenario: Valig login
    When user "demo" logs in with password "mode"
    Then Welcome Page should be open

Scenario: Nonvalid user name
    When user "guest" logs in with password "mode"
    Then Error Page should be open
    
Scenario: Nonvalid password
    When user "demo" logs in with password "password"
    Then Error Page should be open
