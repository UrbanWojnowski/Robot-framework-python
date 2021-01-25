*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Resources2.robot
Documentation   This File having testcase of testing ABC Functionality
#test timeout  10s
Test Setup  Start Browser and Maximize  https://www.thetestingworld.com/testings    Chrome
Test Teardown   Close Browser Window
#Suite Setup  Before Each Test Suite
#Suite Teardown  After Each Test Suite



*** Variables ***
${PageTitle}
${Speed}
${Value}
${Text}
${ActualURL}
${PageHTML}
${Attr}
${cnt}


*** Test Cases ***
TC_001_Test Fetch Data
    [Tags]  Smoke
    [Documentation]  This test case is to Fetch Data
    #[Timeout]   2mins  8s
    ${PageTitle}=  Get Title
    Log  ${PageTitle}

    Enter username and emailaddress
    Enter password and confirm

    ${Value}=  Get Value  xpath://input[@type='submit']
    Log  ${Value}

    ${Text}=  Get Text  xpath://a[@class='displayPopup']
    Log  ${Text}

    ${ActualURL}  Get Location
    Log  ${ActualURL}

    ${Attr}=  Get Element Attribute  name:fld_username  class
    log  ${Attr}

    ${cnt}=  Get Element Count  class:field
    log ${cnt}

    #Enter adressdata
    #Checkbox selecting

    ${Speed}=  Get Selenium Speed
    Log  $(Speed}


*** Keywords ***
Enter username and emailaddress
    Input Text  name:fld_username  Urban
    Input Text  xpath://input[@name='fld_email']  ugwojnowski@gmail.com


Enter password and confirm
    Input Password  name:fld_password       ${Password}
    Input Password  name:fld_cpassword       ${Password}


Enter adressdata
    Select Radio Button  add_type   office
    Select From List By Label   name:sex    Male
    Select From List By Label   name:country    Poland
    Set Selenium Speed  3seconds
    Select From List By Label   name:state  Dolnoslaskie
    Select From List by Value   name:city   32290
    Set Selenium Speed  2seconds
    Input Text  name:zip    50-504

Checkbox selecting
    Select Checkbox     name:terms






