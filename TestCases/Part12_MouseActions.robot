*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}      https://demo.nopcommerce.com

*** Test Cases ***
TestCase1 screenshots
  Open Browser and MouseHover

*** Keywords ***
 Open Browser and MouseHover
    open browser   https://www.google.com    ${browser}
    maximize browser window
    capture element screenshot     (//input[@value='Google Search'])[2]   ./test1.png
    capture page screenshot   ./page.png
    close all browsers

