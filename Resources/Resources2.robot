*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Password}     "Urban2019"


*** Keywords ***
Start Browser and Maximize
    [Documentation]  This keyword is for Start Browser and maximize its window
    [Arguments]     ${UserURL}  ${InputBrowser}
    Open Browser    ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    ${Title}=  Get Title
    Log  ${Title}
    [Return]    ${Title}


Close Browser Window
    ${Title}=   Get Title
    Log  ${Title}
    Close Browser


Before Each Test Suite
    Log  Befor Each Test Suite


After Each Test Suite
    Log After Each Test Suite

#User defined keyword with argument