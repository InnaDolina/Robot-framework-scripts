*** Settings ***
Library             SeleniumLibrary
Resource            C:/Projects/Robot/Robot practice/Tests/Crm.robot

*** Keywords ***
Open web page
    go to                                           ${START_URL}
    maximize browser window
Sign In
    page should contain     Customers Are Priority One
    click link              id=SignIn
    page should contain     Login
    input text              id=email-id             ${USER_EMAIL}
    input text              id=password             ${USER_PASSWORD}
    click button            id=submit-id
    page should contain     Our Happy Customers
Add new customer
    click link              id=new-customer
    page should contain     Add Customer
    input text              id=EmailAddress         ${NEW_USER_EMAIL}
    input text              id=FirstName            ${FIRST_NAME}
    input text              id=LastName             ${LAST_NAME}
    input text              id=City                 ${CITY}
    select from list by value    id=StateOrRegion   ${STATE}
    select radio button     gender      female
    select checkbox         name=promos-name
    click button            css=.btn.btn-primary
Verify new customer was added
    wait until page contains    Success! New customer added.



