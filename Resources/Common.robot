*** Settings ***
Library             SeleniumLibrary
Resource            C:/Projects/Robot/Robot practice/Tests/Crm.robot

*** Keywords ***
Begin Web test
    open browser    about:blank     ${BROWSER}

End Web test
    close browser

