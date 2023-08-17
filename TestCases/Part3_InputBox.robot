*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}      https://demo.nopcommerce.com



*** Test Cases ***
TestCase1
  Open Browser and Test InputBox on Website

*** Keywords ***
Open Browser and Test InputBox on Website
    open browser    ${url}    ${browser}    options=add_experimental_option("detach",${True})
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath://a[@class='ico-login']
    ${email_txt}    set variable     id:Email
    element should be visible      ${email_txt}
    element should be enabled      ${email_txt}
    input text       ${email_txt}     sumit6789@gmail.com
    sleep  5
    clear element text    ${email_txt}
    sleep    3
    close browser






