*** Settings ***
Library    FlaUILibrary

*** Test Cases ***
Open and Close App
    ${pid}   Launch Application    C:/Users/gfabian/source/repos/DemoApp/DemoApp/bin/Release/DemoApp.exe
    Sleep               2s
    Close Application   ${pid}