*** Settings ***
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Page Loaded
    wait until page contains    Login

Login With Valid Credentials
    [Arguments]    ${Email}     ${Password}
    Fill "Email" Field          ${Email}
    Fill "Password" Field       ${Password}
    Click "Submit" Button

Fill "Email" Field

Fill "Password" Field

Click "Submit" Button
