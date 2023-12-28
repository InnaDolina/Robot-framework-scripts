*** Settings ***
Library             SeleniumLibrary
Resource            ../../Tests/CRM.robot

*** Variables ***
${HOME_HEADER_LABEL} =          Customers Are Priority One
${HOME_HEADERS} =               Fast    Friendly    Factual

*** Keywords ***
Navigate To
    go to                       ${START_URL}

Verify Page Loaded
    wait until page contains    ${HOME_HEADER_LABEL}
    page should contain         ${HOME_HEADERS}[0]
    page should contain         ${HOME_HEADERS}[1]
    page should contain         ${HOME_HEADERS}[2]