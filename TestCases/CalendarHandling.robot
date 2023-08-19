*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Select Date in Calendar
    Open Browser    https://www.goibibo.com/info/airfare-calendar    chrome    options=add_experimental_option("detach",${True})
    click element    xpath://i[@class='icon-calendar1 black ico26 fl padR5']
    ${"year_month"}  set variable    xpath:(//*[@class='jrdp_calendar_month_multi'])[2]
    ${next_button}    set variable    css:#jrdp_start-calen_nextmonth_multi_1

     log to console       ${"year_month"}

    #   log to console   ${textval}
    FOR    ${i}    IN RANGE    999999
          ${textval}=    get text     ${"year_month"}
           Exit For Loop If    '${textval}' == 'April 2024'
            click element     ${next_button}
           log to console    ${textval}
    END

    ${dates}    set variable    xpath:(//td[@class='jrdp_calendar_box'])[2]//div[@class='calDate']
    ${total_dates}    get element count    ${dates}

    FOR    ${j}    IN RANGE    1    ${total_dates}+1
     ${dates_text}=  get text   xpath:((//td[@class='jrdp_calendar_box'])[2]//div[@class='calDate'])[${j}]
     Run Keyword If    '${dates_text}' == '10'    Click Element    xpath:((//td[@class='jrdp_calendar_box'])[2]//div[@class='calDate'])[${j}]
     Exit For Loop If    '${dates_text}' == '10'
     log to console    ${dates_text}

    END









