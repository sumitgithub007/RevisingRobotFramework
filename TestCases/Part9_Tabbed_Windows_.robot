*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}     https://demo.automationtesting.in/Windows.html



*** Test Cases ***
Testcase2 MultipleTabs
    Open Browser and Test new window
*** Keywords ***
Open Browser and Test new window
    open browser   ${url}  ${browser}     options=add_experimental_option("detach",${True})
    click link     //*[contains(@href,'sele')]
    ${handles}=    Get Window Handles
   ${main_window}=    get window identifiers
    Log    Main Window Handle: ${main_window}
    FOR    ${handle}    IN    @{handles}
         switch window      ${handle}
         ${title} =    get title
         log to console    "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"+ ${title}

        #switch window      ${main_window}
    END
    click element      css:span[class='DocSearch-Button-Placeholder']
