*** Settings ***
Documentation       This is some basic info about the whole suite
Resource            ../Resources/Common.robot
Resource            ../Resources/CRMApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

# Run the script: robot -d Results Tests/CRM.robot

*** Variables ***
${BROWSER} =                    chrome
${START_URL} =                  https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =          admin@robotframework.com
${VALID_LOGIN_PASSWORD} =       qwerty
${NEW_USER_EMAIL} =             janedoe@gmail.com
${FIRST_NAME} =                 Jane
${LAST_NAME} =                  Doe
${CITY} =                       Dallas
${STATE} =                      TX

*** Test Cases ***
Home page should load
    [Documentation]         Test the home page
    [Tags]                  Web  1001  Smoke  Home
    CRMApp.Go to "Home" Page

Should be able to login with valid credentials
    [Documentation]         Test the successful login
    [Tags]                  Web  1002  Smoke  Login
    CRMApp.Go to "Home" Page
    CRMApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
Should be able to log out
    [Documentation]         Test the successful log out
    [Tags]                  Web  1004  Smoke  Login
    CRMApp.Go to "Home" Page
    CRMApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CRMApp.Sign Out

Logged in user should be able to add new customer
    [Documentation]         Test adding a new customer
    [Tags]                  Web  1006  Smoke  Contacts
    CRMApp.Go to "Home" Page
    CRMApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CRMApp.Add New Customer
    CRMApp.Sign Out
