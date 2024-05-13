*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}              https://staging.skoleralms.com/
${USERNAME_field}                     name=username
${PASSWORD_field}                     name=password
${LOGIN_BUTTON}                       Login

*** Keywords ***
Open Login Page
    [Arguments]    ${browser}

    open browser        ${LOGIN_URL}    ${browser}

Input Username
    [Arguments]     ${username}
    input text      ${USERNAME_field}        ${username}

Input Password
    [Arguments]    ${password}
    input text    ${PASSWORD_field}   ${password}

Click Login Button
    click button   ${LOGIN_BUTTON}

# po di feha kol keywords w methods w pathes bta3t login screen