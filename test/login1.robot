*** Settings ***
Documentation   Test login for skolera url
Library         SeleniumLibrary
Resource     ../resource/po/login.robot
Resource     ../resource/common.robot
Test Setup      open url
Test Teardown    end browser

     #robot -d result test/login1.robot
*** Variables ***

*** Test Cases ***
 Login Test valid case1
    [Documentation]             Test login for skolera url
    Input Username              skolera
   # sleep                       10s
    Input Password              asdasd123A!
   # sleep                       10s
    Click Login Button
    sleep                       10s


Login Test invalid case1(wrong username)
    [Documentation]               Test login for skolera url
    Input Username                skolera1
    #sleep                         10s
    Input Password                asdasd123A!
    #sleep                         10s
    Click Login Button
    sleep                       10s

Login Test invalid case2(wrong password)
    [Documentation]                Test login for skolera url
    Input Username                 skolera
    #sleep                          10s
    Input Password                 rasdasd123A!
   # sleep                          10s
    Click Login Button
    sleep                       10s

Login Test invalid case3(empty username&password)
    [Documentation]    Test login for skolera url
    Click Login Button
    sleep                       10s
