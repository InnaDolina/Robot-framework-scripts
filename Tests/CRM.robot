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
Logged in user should be able to add new customer
    [Documentation]         This is the basic info about test
    [Tags]                  Web  1006  Smoke  Contacts

    CRMApp.Go to "Home" Page


    CRMApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

    CRMApp.Add New Customer
    CRMApp.Verify New Customer Was Added

    click link                  Sign Out
    wait until page contains    Signed Out


