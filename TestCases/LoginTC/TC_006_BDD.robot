*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Resources2.robot
Documentation   BDD


*** Variables ***


*** Test Cases ***
    Given  Start Browser and Maximize
    When  Create Folder as Runtime  ABCD  XYZM
    Then  Concatenate Username and Password  Testing World

*** Keywords ***
