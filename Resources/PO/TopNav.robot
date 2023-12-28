*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${TOPNAV_SIGNIN_LINK} =     id=SignIn

*** Keywords ***
Click "Sign In" Link
    click link    ${TOPNAV_SIGNIN_LINK}
