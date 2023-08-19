*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}     https://www.amazon.in

*** Test Cases ***
Testcase2 MultipleTabs
  Open Links in Separate Tabs and Print Titles

*** Keywords ***
 Open Links in Separate Tabs and Print Titles
   Open Browser    ${url}    chrome
    @{links}=    Get WebElements    xpath=(//div[@class='navFooterLinkCol navAccessibility'])[1] //a
    ${original_handle}=    Get Window Identifiers
    FOR    ${link}    IN    @{links}
        ${url}=    Get Element Attribute    ${link}    href
        Execute JavaScript    window.open('${url}', '_blank')
    END

    ${handles}=    Get Window Handles
    FOR    ${handle}    IN    @{handles}
        switch window      ${handle}
        ${title}=    Get Title
        Log    ${title}
    END

    switch window    ${original_handle}
    Close Browser
