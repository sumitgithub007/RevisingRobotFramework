*** Settings ***
Library     SeleniumLibrary
Resource    ../ResourcesDir/resources.robot


*** Variables ***
${browser}    chrome
${url}      https://www.countries-ofthe-world.com/flags-of-the-world.html



*** Test Cases ***
Testcase scroll functionality
    Open the browser Testing    ${url}    ${browser}
    #Execute the Javascript for scroll
    #scroll till It find India
    scroll till bottom of page

