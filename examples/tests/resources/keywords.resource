*** Variables ***
${PID}  0
${VALID_USER}       testuser
${VALID_PASSWORD}   123456

*** Keywords ***
Enter Credentials
    [Arguments]    ${username}    ${password}
    Set Text To Textbox    //*[@AutomationId='txtUsername']    ${username}
    Set Text To Textbox    //*[@AutomationId='txtPassword']    ${password}

Click Login Button
    Wait Until Element Is Enabled    //*[@AutomationId='btnLogin']    2
    Click   //*[@AutomationId='btnLogin']

Verify Welcome Message
    Wait Until Element Exist    //*[@AutomationId='lblWelcome']    2
    Wait Until Element Does Not Exist    /Window[@AutomationId='LoginForm']    2

Verify Error Message
    Wait Until Element Exist    //*[@AutomationId='lblError']    2

Launch DemoApp
    ${pid}=   Launch Application   C:/Users/gfabian/source/repos/DemoApp/DemoApp/bin/Release/DemoApp.exe
    Set Suite Variable   ${PID}    ${pid}
    Wait Until Element Exist    /Window[@AutomationId='LoginForm']   2