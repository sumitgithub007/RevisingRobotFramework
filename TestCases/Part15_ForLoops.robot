*** Settings ***
Library     SeleniumLibrary
Resource    ../ResourcesDir/resources.robot


*** Variables ***
${browser}    chrome
${url}      https://www.countries-ofthe-world.com/flags-of-the-world.html



*** Test Cases ***
Testcase FOR LOOPS functionality
  #Run the For loop
  Run the for loop with list
