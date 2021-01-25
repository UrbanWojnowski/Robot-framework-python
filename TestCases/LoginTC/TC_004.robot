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


*** Test Cases ***
TC_001_Test Register Form
    [Tags]  Smoke
    [Documentation]  This test case is to chceck registration functionality of Application
    #[Timeout]   2mins  8s
    Enter username and emailaddress
    Enter password and confirm
    Enter adressdata
    Checkbox selecting


TC_002_Test
    [Tags]  Smoke  Sanity
    Enter Telephone Number


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

Enter Telephone Number
    Input text  name: phone     743876929





