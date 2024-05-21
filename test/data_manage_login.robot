*** Settings ***
Documentation   Test login for skolera url
Library         SeleniumLibrary
Resource     ../resource/po/login.robot
Resource     ../resource/common.robot
Test Setup      open url
Test Teardown    end browser

 #robot -d result test/data_manage_login.robot
*** Variables ***
&{username}     valid=skolera        invalid=skolrte
&{password}     valid=asdasd123A!    invalid=54322

*** Test Cases ***
Login Test valid case1
    [Documentation]             Test login for skolera url
    Input Username               ${username.valid}
    Input Password               ${password.valid}
    Click Login Button
    sleep                       10s

Login Test invalid case1(wrong username)
    [Documentation]               Test login for skolera url
    Input Username                ${username.invalid}
    Input Password                ${password.valid}
    Click Login Button
    sleep                       10s

Login Test invalid case2(wrong password)
    [Documentation]                Test login for skolera url
    Input Username                 ${username.valid}
    Input Password                 ${password.invalid}
    Click Login Button
    sleep                       10s

Login Test invalid case3(empty username&password)
    [Documentation]    Test login for skolera url
    Click Login Button
    sleep                       10s
