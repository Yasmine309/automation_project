*** Settings ***
Documentation   Test login for skolera app
Library         AppiumLibrary

*** Test Cases ***
Login Test valid case1
    [Documentation]             Test login for skolera app
    open application           http://localhost:4723/wd/hub     platformName=Android	deviceName=a7b37209     AppPACKAGE=
