*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}      https://demo.nopcommerce.com



*** Test Cases ***
Login Test
    open browser    ${url}    ${browser}    options=add_experimental_option("detach",${True})
    LoginToApplication


*** Keywords ***
LoginToApplication
    click link    xpath://a[@class='ico-login']
    input text    id:Email  goyalsumit319@gmail.com
    input text     Password    Test@123
    click element    xpath:(//button[@type='submit'])[2]
    close browser







