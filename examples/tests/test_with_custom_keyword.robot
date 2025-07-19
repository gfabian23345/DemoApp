*** Settings ***
Library     FlaUILibrary
Library     libraries/CustomLibrary.py
Resource    resources/keywords.resource

Test Setup   Launch DemoApp
Test Teardown    Close Application   ${PID}

*** Test Cases ***
Login With Valid Credentials
    [Tags]    smoke    loginrobot 
    [Timeout]    5s
    Enter Credentials    ${VALID_USER}    ${VALID_PASSWORD}
    Click Login Button
    Verify Welcome Label Contains Username    ${VALID_USER}