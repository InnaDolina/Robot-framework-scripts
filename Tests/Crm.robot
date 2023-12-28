*** Settings ***
Documentation       This is some basic info about the whole suite
Resource            C:/Projects/Robot/Robot practice/Resources/Common.robot
Resource            C:/Projects/Robot/Robot practice/Resources/CRM.robot
Test Setup          Begin Web test
Test Teardown       End Web test

# Run the script: robot -d Results Tests/Crm.robot

*** Variables ***
${BROWSER} =            chrome
${START_URL} =          https://automationplayground.com/crm/
${USER_EMAIL} =         admin@robotframework.com
${USER_PASSWORD} =      qwerty
${NEW_USER_EMAIL} =     janedoe@gmail.com
${FIRST_NAME} =         Jane
${LAST_NAME} =          Doe
${CITY} =               Dallas
${STATE} =              TX

*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is the basic info about test
    [Tags]                  Web  1006  Smoke  Contacts

    CRM.Open web page
    CRM.Sign In
    CRM.Add new customer
    CRM.Verify new customer was added

