*** Settings ***
Library             SeleniumLibrary
Resource            ../../Tests/CRM.robot

*** Variables ***
${HOME_HEADER_LABEL} =          Customers Are Priority One

*** Keywords ***
Navigate To
    go to                       ${START_URL}
Verify Page Loaded
    wait until page contains    ${HOME_HEADER_LABEL}