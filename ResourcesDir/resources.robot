*** Settings ***
Library    SeleniumLibrary
Library    String
Library    BuiltIn
*** Variables ***
${COUNT}    0
${sum}    0
${xpathval}    empty


*** Keywords ***
Open Browser and Test InputBox on Website
    [Arguments]     ${url}    ${browser}
    open browser   ${url}  ${browser}
    maximize browser window
    ${tit}=    get title
    [Return]    ${tit}


Open the browser Testing
    [Arguments]     ${url}    ${browser}
    open browser    ${url}  ${browser}    options=add_experimental_option("detach",${True})
    maximize browser window

Execute the Javascript for scroll
    execute javascript    window.scrollTo(0,1500)
scroll till It find India
    scroll element into view    xpath://*[text()='India']
scroll till bottom of page
      execute javascript    window.scrollTo(0,document.body.scrollHeight)
      sleep  3
       execute javascript    window.scrollTo(0,-document.body.scrollHeight)

Run the For Loop
    FOR    ${i}     IN RANGE    0   10    2
     ${result}=    Evaluate    ${i}*2
     Log To Console    ${result}    #no_newline=true
    END

Run the for loop with list
    @{items}    create list    1    2    3    4    5
    FOR    ${i}     IN     @{items}
    log to console    ${i}
    exit for loop if    ${i}==3
    END

open the browser google
    [Arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}    options=add_experimental_option("detach",${True})
count the links
    [Arguments]    ${xpath}
  Set Global Variable    ${xpathval}    ${xpath}
    ${count}=    Get Element Count    ${xpath}
    Set Global Variable    ${COUNT}    ${count}

    log to console    "xxxxxxxxxxxxxxxxxxxx"+${count}
get the text of all links
    ${count}=    Get Variable Value    ${COUNT}
    log to console    "firstttt"+${count}


    FOR    ${i}    IN RANGE  1    ${count}+1
   log to console    "sumitttttttttt"+${xpathval}
    ${linksText}=    get element attribute    xpath:(//a)[${i}]     href
    log to console    ${linksText}
    END


Open Browser and Fetch Table data
   [Arguments]         ${url}     ${browser}
    open browser        ${url}    ${browser}
    ${total_ele}=    get element count    xpath://tbody//tr//td[2]//p
    FOR  ${i}    IN RANGE    1      ${total_ele}+1
    ${ele_text}=    get text    xpath:(//tbody//tr//td[2]//p)[${i}]
  #  log to console   "data=" ${ele_text}
      ${no_commas_string}     Replace String    ${ele_text}    ,    ${EMPTY}
     ${split_parts}    Split String    ${no_commas_string}    \n
    ${first_number}    Set Variable    ${split_parts}[0]
      ${sum}    Evaluate    ${sum} + ${first_number}


    END
    log to console      ${sum}
