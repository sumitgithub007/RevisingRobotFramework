*** Settings ***
Library     SeleniumLibrary
Resource    ../ResourcesDir/resources.robot


*** Variables ***
${browser}    chrome
${url}      https://www.google.com



*** Test Cases ***
Testcase FOR Link count
  open the browser google  ${url}    ${browser}
  count the links    xpath://a
  get the text of all links

