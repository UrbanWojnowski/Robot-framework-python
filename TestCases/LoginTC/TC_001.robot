*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Browser}      Firefox
${URL}      https://www.google.pl/


*** Test Cases ***
TC_001_Test przegladarki
    [Tags]  Regression  Testing
    Otworzenie strony testowej
    Powiekszenie okna
    Zamkniecie przegladarki


*** Keywords ***
Otworzenie strony testowej
    open browser    ${URL}  ${Browser}


Powiekszenie okna
    maximize browser window


Zamkniecie przegladarki
    close browser
