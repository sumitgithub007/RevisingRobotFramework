*** Settings ***
Library     SeleniumLibrary
Resource    ../ResourcesDir/resources.robot


*** Variables ***
${browser}    chrome
${url}      https://demo.nopcommerce.com



*** Test Cases ***
TestCase1 MultipleBrowsers
  ${title}=  Open Browser and Test InputBox on Website    ${url}    ${browser}
    log to console    "defsdfdsfsdfsdfsdfsdfsdfsdfds"+${title}
