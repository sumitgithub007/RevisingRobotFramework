*** Settings ***

#Suite Setup    log to console    Opening browser
#Suite Teardown  log to console    closing browser

#Test Setup    log to console    Login to application
#Test Teardown    log to console    logout from application

*** Test Cases ***
TC1 Prepaid recharge
        [Tags]    regression
        log to console    This is my prepaid recharge testcase

TC2 Postpaid recharge
        [Tags]    sanity
         log to console    This is my postpaid recharge testcase


TC3 Login
    [Tags]    regression
     log to console     This is login test

TC4 Regression
    log to console     This is my regression test
