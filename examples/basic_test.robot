*** Settings ***
Library    FlaUILibrary

Suite Setup   Launch DemoApp
Suite Teardown    Close Application   ${PID}

*** Variables ***
${PID}  0

*** Keywords ***
Launch DemoApp
    ${pid}=   Launch Application   C:/Users/gfabian/source/repos/DemoApp/DemoApp/bin/Release/DemoApp.exe
    Set Suite Variable   ${PID}    ${pid}

*** Test Cases ***
Login With Valid Credentials
    Sleep               1s
    Press Key   t'testuser'   //*[@AutomationId='txtUsername']
    Sleep               1s
    Press Key   t'123456'   //*[@AutomationId='txtPassword']
    Sleep               1s
    Click   //*[@AutomationId='btnLogin']
    Wait Until Element Exist    //*[@AutomationId='lblWelcome']    2
    Sleep   1s
