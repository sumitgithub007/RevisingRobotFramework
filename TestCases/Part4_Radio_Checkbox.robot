*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}      https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_type_radio



*** Test Cases ***
TestCase1
  Test Radio box and checkbox

*** Keywords ***
Test Radio box and checkbox


    open browser    ${url}    ${browser}    options=add_experimental_option("detach",${True})
    maximize browser window
    set selenium speed    2seconds
    Select Frame    css:#iframeResult
    select radio button   fav_language    css

    #click element    xpath://input[@id='css']
    unselect frame
    select checkbox   #webelementdedo


