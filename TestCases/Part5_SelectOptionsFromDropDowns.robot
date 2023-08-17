*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}      https://www.wikipedia.org/


*** Test Cases ***
TestCase1
    Handling dropdowns and lists



*** Keywords ***
Handling dropdowns and lists
  open browser    ${url}    ${browser}    options=add_experimental_option("detach",${True})
  maximize browser window
  #set selenium speed    2seconds
  select from list by label    css:#searchLanguage    Euskara
  select from list by index    css:#searchLanguage    2