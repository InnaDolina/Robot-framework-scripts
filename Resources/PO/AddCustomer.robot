*** Settings ***
Library             SeleniumLibrary
Resource            ../../Tests/CRM.robot

*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =           Add Customer
${ADDCUSTOMER_SUBMIT_BUTTON} =          Submit
${ADDCUSTOMER_EMAIL_TEXTBOX} =          id=EmailAddress
${ADDCUSTOMER_FIRST_NAME_TEXTBOX} =     id=FirstName
${ADDCUSTOMER_LAST_NAME_TEXTBOX} =      id=LastName
${ADDCUSTOMER_CITY_TEXTBOX} =           id=City
${ADDCUSTOMER_STATE_DROPDOWN} =         id=StateOrRegion
${ADDCUSTOMER_GENDER_RADIOBUTTON} =     gender
${ADDCUSTOMER_PROMO_CHECKBOX} =         name=promos-name

*** Keywords ***
Verify Page Loaded
    wait until page contains    ${ADDCUSTOMER_HEADER_LABEL}

Add New Customer
    Fill Customer Fields
    Click "Submit" Button

Fill Customer Fields
    input text                  ${ADDCUSTOMER_EMAIL_TEXTBOX}            ${NEW_USER_EMAIL}
    input text                  ${ADDCUSTOMER_FIRST_NAME_TEXTBOX}       ${FIRST_NAME}
    input text                  ${ADDCUSTOMER_LAST_NAME_TEXTBOX}        ${LAST_NAME}
    input text                  ${ADDCUSTOMER_CITY_TEXTBOX}             ${CITY}
    select from list by value   ${ADDCUSTOMER_STATE_DROPDOWN}           ${STATE}
    select radio button         ${ADDCUSTOMER_GENDER_RADIOBUTTON}       female
    select checkbox             ${ADDCUSTOMER_PROMO_CHECKBOX}

Click "Submit" Button
    click button                ${ADDCUSTOMER_SUBMIT_BUTTON}