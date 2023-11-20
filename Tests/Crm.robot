*** Settings ***
Documentation    This is some basic info about the whole suite
Library          SeleniumLibrary
# Run the script: robot -d Results Tests/Crm.robot

*** Variables ***


*** Test Cases ***
Should be able to add a new customer
    [Documentation]         This is the basic info about test
    [Tags]                  Web  1006  Smoke  Contacts
    set selenium speed      .2s    # slows down the execution
    set selenium timeout    5s
    log                     Starting the test case
    open browser            https://automationplayground.com/crm/    chrome
    # resize browser window
    set window size         width=1935      height=1098
    set window position     x=-20   y=10
    sleep                   3s
    close browser

*** Keywords ***
