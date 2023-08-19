*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}      https://testautomationpractice.blogspot.com/



*** Test Cases ***
#TestCase1 Alerts
#  Open Browser and Test alert
Testcase2 Frames
    Open Browser and Handle Frames
*** Keywords ***
Open Browser and Test alert
    open browser   ${url}  ${browser}     options=add_experimental_option("detach",${True})
    ${speed}=    get selenium speed
    maximize browser window
    #set selenium timeout    10 seconds
    click element    css:button[onclick='myFunctionAlert()']
     #input text into alert
    ${alert_text} =   handle alert
    #input text into alert
    log to console    "xxxxxxxxxxxxxxxxxxxxxxxxxxx"+${alert_text}
    Wait Until Keyword Succeeds    10s    1s    Should Contain    press button    ${alert_text}
Open Browser and Handle Frames
     open browser  https://jqueryui.com/droppable/   ${browser}     options=add_experimental_option("detach",${True})
     #set selenium implicit wait    30 seconds
     set selenium timeout    30 seconds
     maximize browser window
     select frame    css:.demo-frame
     drag and drop     css:#draggable   css:#droppable
     unselect frame   # css:.demo-frame
     wait until page contains element    //*[text()='Download']
     click element      //*[text()='Download']



    #alert should be present    handle alert


