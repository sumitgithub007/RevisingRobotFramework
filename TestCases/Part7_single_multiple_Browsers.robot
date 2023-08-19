*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}      https://demo.nopcommerce.com



*** Test Cases ***
TestCase1 MultipleBrowsers
  Open Browser and Test InputBox on Website

*** Keywords ***
Open Browser and Test InputBox on Website
    open browser   https://demo.nopcommerce.com  ${browser}
    maximize browser window


    open browser   https://www.google.com    ${browser}
    maximize browser window


    close all browsers