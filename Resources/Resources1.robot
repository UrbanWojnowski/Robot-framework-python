*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Browser}      Firefox
${URL}      https://www.thetestingworld.com/testings
${Password}     "Urban2019"


*** Keywords ***
Start Browser and Maximize
    Open Browser    ${URL}  ${Browser}
    Maximize Browser Window