*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Browser}      Firefox
${URL}      https://www.thetestingworld.com/testings
${Password}     "Urban2019"


*** Test Cases ***
TC_001_Test Register Form
    Start Browser and Maximize
    Enter username and emailaddress
    Enter password and confirm
    Zaznaczenie radiobuttona
    Wybierz plec


*** Keywords ***
Start Browser and Maximize
    open browser    ${URL}  ${Browser}
    maximize browser window


Enter username and emailaddress
    Input Text  name:fld_username  Urban
    Input Text  xpath://input[@name='fld_email']  ugwojnowski@gmail.com


Enter password and confirm
    Input Password  name:fld_password       ${Password}
    Input Password  name:fld_cpassword       ${Password}


Zaznaczenie radiobuttona
    Select Radio Button  add_type   office


Wybierz plec
    #Select from List By Index   name:sex    2
    #Select From List By Value   name:sex    1
    Select From List By Label   name:sex    Male






