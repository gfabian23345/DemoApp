*** Settings ***
Library    FlaUILibrary
Resource    resources/keywords.resource

Test Setup   Launch DemoApp
Test Teardown    Close Application   ${PID}

*** Test Cases ***
Login With Valid Credentials
    [Tags]    smoke    login
    [Timeout]    5s
    Enter Credentials    ${VALID_USER}    ${VALID_PASSWORD}
    Click Login Button
    Verify Welcome Message

Login With Invalid Credentials
    [Tags]    smoke    login
    [Timeout]    5s
    Enter Credentials    ${VALID_USER}   invalid password
    Click Login Button
    Verify Error Message
