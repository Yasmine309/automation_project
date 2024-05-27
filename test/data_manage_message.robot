*** Settings ***
Documentation   Test login for skolera url
Library         SeleniumLibrary
Resource     ../resource/po/message.robot
Resource     ../resource/common.robot
Suite Setup     login to skolera2
Suite Teardown    end browser
  # robot -d result test/data_manage_message.robot
# all keywords from file po --> message.robot
*** Test Cases ***
Check and Uncheck my message checkbox
    [Documentation]    Test my check message checkbox
    Attempt Checkbox mymessage    checked=True    unchecked=False
    message.Write message2    text=test unchecked checkbox my message
    sleep              10s
    Attempt Checkbox mymessage    checked=False    unchecked=True
    message.Write message2     text=test checked checkbox my message
    sleep              10s




 




