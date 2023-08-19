*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Select Date in Calendar
    Open Browser    https://www.goibibo.com/info/airfare-calendar    chrome
    Wait Until Element Is Visible    css=.DayPicker
    Click Next Button Until Year    2024
    Select Specific Date    2024-12-15
    Close Browser

*** Keywords ***
Click Next Button Until Year
    [Arguments]    ${year}
    ${current_year}=    Get Text    css=.DayPicker-Caption
    :FOR    ${i}    IN RANGE    10    # Limit loop to avoid infinite looping
        Exit For Loop If    ${current_year} == ${year}
        Click Element    css=.DayPicker-NavButton--next
        ${current_year}=    Get Text    css=.DayPicker-Caption
    Run Keyword If    ${current_year} != ${year}    Fail    Year ${year} not found

Select Specific Date
    [Arguments]    ${date}
    FOR    ${day}    IN RANGE    1    31
        ${day_locator}=    Set Variable    css=.DayPicker-Day[aria-label*="${date}-${day}"]
        ${element_present}=    Run Keyword And Return Status    Element Should Be Visible    ${day_locator}
        Exit For Loop If    ${element_present}    # Exit when the desired date is found
    END
    Click Element    ${day_locator}
    element should be enabled
