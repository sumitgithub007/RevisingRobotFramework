*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}      https://demowebshop.tricentis.com/register



*** Test Cases ***
TestCase1
  Test selenium waits

*** Keywords ***
Test selenium waits


    open browser    ${url}    ${browser}    options=add_experimental_option("detach",${True})
    ${speed}=    get selenium speed
    log to console    ${speed}
    maximize browser window
    #set selenium speed    1
   # set selenium timeout    20 seconds
   # wait until page contains    Refgister     #default 5 seconds
   # set selenium implicit wait    10 seconds
    wait until page contains element    xpath://*[text()='Newsletter']
    select radio button    Gender     M
    input text    name:FikrstName     David
    input text    name:LastName     Goyal
    input text    name:Email        anch@gmail.com
    input text    name:Password     davidjohn
    input text    name:ConfirmPassword    davidjohn
    # ${speed}=    get selenium speed
    #log to console    "uuuuuuuuuuuuuuuuuuuuuu"+${speed}


