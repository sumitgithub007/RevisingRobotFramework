*** Settings ***
Library     SeleniumLibrary
Resource    ../ResourcesDir/resources.robot


*** Variables ***
${browser}    chrome
${url}      https://edata.ndtv.com/coronavirus/table/india_table.html?shgraph=1&days=7



*** Test Cases ***
TestCase1 table data
  Open Browser and Fetch Table data     ${url}     ${browser}

