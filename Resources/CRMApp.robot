*** Settings ***
Resource            ./PO/AddCustomer.robot
Resource            ./PO/Customers.robot
Resource            ./PO/Home.robot
Resource            ./PO/LoggedOut.robot
Resource            ./PO/SignIn.robot
Resource            ./PO/TopNav.robot

*** Keywords ***
Go to "Home" Page
    Home.Navigate To
    Home.Verify Page Loaded
Login With Valid Credentials
    [Arguments]    ${Email}     ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Login With Valid Credentials    ${Email}     ${Password}




    click link                  id=SignIn
    wait until page contains    Login
    input text                  id=email-id             ${VALID_LOGIN_EMAIL}
    input text                  id=password             ${VALID_LOGIN_PASSWORD}
    click button                id=submit-id
    wait until page contains    Our Happy Customers
Add New Customer
    click link                  id=new-customer
    wait until page contains    Add Customer
    input text                  id=EmailAddress         ${NEW_USER_EMAIL}
    input text                  id=FirstName            ${FIRST_NAME}
    input text                  id=LastName             ${LAST_NAME}
    input text                  id=City                 ${CITY}
    select from list by value   id=StateOrRegion        ${STATE}
    select radio button         gender      female
    select checkbox             name=promos-name
    click button                css=.btn.btn-primary
Verify New Customer Was Added
    wait until page contains    Success! New customer added.



