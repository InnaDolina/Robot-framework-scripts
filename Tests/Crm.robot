*** Settings ***
Documentation    This is some basic info about the whole suite
Library          SeleniumLibrary
# Run the script: robot -d Results Tests/Crm.robot

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is the basic info about test
    [Tags]                  Web  1006  Smoke  Contacts
    # Initialize Selenium
    set selenium speed      .2s    # slows down the execution
    set selenium timeout    5s

    # Open the browser
    log                     Starting the test case
    open browser            https://automationplayground.com/crm/    chrome

    maximize browser window

    page should contain     Customers Are Priority One
    click link              Sign In
    page should contain     Login
    input text              id=email-id     admin@robotframework.com
    input text              id=password     qwerty
    click button            id=submit-id
    page should contain     Our Happy Customers

    click link              id=new-customer
    page should contain     Add Customer

    input text              id=EmailAddress     janedoe@gmail.com
    input text              id=FirstName        Jane
    input text              id=LastName         Doe
    input text              id=City             Dallas
    select from list by value    id=StateOrRegion       TX
    select radio button     gender      female
    select checkbox         name=promos-name
    click button            css=.btn.btn-primary
    wait until page contains    Success! New customer added.

    sleep                   2s
    close browser

*** Keywords ***
