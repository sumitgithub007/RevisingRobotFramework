*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Select yahoo dropdown
    Open Browser    https://www.yahoo.com/    chrome    #options=add_experimental_option("detach",${True})
    set selenium implicit wait    10 seconds
    input text    css:input[type='text']    mob
    ${allData}=   get webelements    xpath://ul[@role='listbox'] //span[@style='display: block;']
        ${ele_Count}=    get element count     xpath://ul[@role='listbox'] //span[@style='display: block;']
      FOR    ${i}    IN RANGE  1   ${ele_Count}+1
      ${element_text}=   Get Text    xpath:(//ul[@role='listbox'] //span[@style='display: block;'])[${i}]

    Run Keyword If    '${element_text}' == 'Sprint Corporation'    Click Element    xpath:(//ul[@role='listbox'] //span[@style='display: block;'])[${i}]
    Exit For Loop If    '${element_text}' == 'Sprint Corporation'
    log to console    ${element_text}

       END
        sleep    4


#    FOR    ${element}    IN    @{allData}
#   ${element_text}=   Get Text    ${element}
#    log  "xxxxxxxxxxxxxxxxxxxxxxxxx" ${element_text}
#    Run Keyword If    '${element_text}' == 'Sprint Corporation'    Click Element    ${element}
#     Exit For Loop If    '${element_text}' == 'Sprint Corporation'
#    log    helloooooooooooooo
#    END


   # ${count_data}    get element count     xpath://ul[@role='listbox'] //span[@style='display: block;']







   # log to console    "xxxxxxxxxxxxxxx" ${count_data}



