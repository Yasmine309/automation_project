*** Settings ***
Documentation   Test login for skolera url
Library         SeleniumLibrary
Library         Dialogs
Resource     ../resource/po/login.robot
Resource     ../resource/common.robot
Test Setup      open url
Test Teardown    end browser

     #robot -d result test/dialogs.robot

*** Variables ***
${USERNAME_LOCATOR}  name=username
${PASSWORD_LOCATOR}  name=password

*** Test Cases ***
Login To Skolera
    [Documentation]     input credentials, and log in.
    ${username}=    Get Value From User    Enter your username    skolera
    ${password}=    Get Value From User    Enter your password    asdasd123A!
    Input Text    ${USERNAME_LOCATOR}    ${username}
    Input Text    ${PASSWORD_LOCATOR}    ${password}
    click button                       Login
    Sleep    10s    # Wait for the page to load
 # hna asta5damt keyword bta3t get value from user  hwa 7ayzahri pop message kda lw 3amlt confirm by7ot el data bta3ha f fields w ya3ml el actions el ba3dha