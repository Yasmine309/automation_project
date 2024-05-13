*** Settings ***
Documentation   Test login for skolera url
Library         SeleniumLibrary
Resource     ../resource/po/message.robot
Resource     ../resource/common.robot
Suite Setup     login to skolera2
Test Teardown      CLEAR
Suite Teardown    end browser

# robot -d result test/message2.robot

*** Test Cases ***
#case1
#Go To Message List
 #  [Documentation]    Test go to message list
 #   go to message list
  #  sleep                         10s
  #  [Teardown]     NONE

Check on my message checkbox(case1)
    [Documentation]    Test my message checkbox
    Check on my message checkbox
    #sleep                         10s
    click message
    sleep                         10s
    Write message
    sleep                         10s
    input text in the texteditor    test checkbox my message
    sleep                         10s
    unselect frame
    clicking on send message
    sleep                         10s

#unselect my mesage
  #  [Documentation]    Test my message checkbox
    #Check on my message checkbox
#case2

Dropdown list check option1(student)(case2)
     [Documentation]    Test my  dropdown list
     [Setup]
     Role drop down list
    Select option1(student) from role dropdown list
     click message
     sleep                         10s
    Write message
    input text in the texteditor    test drop down list select student option
    sleep                           10s
    unselect frame
    clicking on send message
    sleep                         10s

Dropdown list check option2(teacher)(case2)
     [Documentation]    Test my  dropdown list

     Role drop down list
     Select option1(teacher ) from role dropdown list
     click message
     #sleep                         10s
    Write message
    input text in the texteditor    test drop down list select teacher option
    #sleep                         10s
    unselect frame
    clicking on send message
    sleep                         10s

Dropdown list check option2(admin)(case3)
     [Documentation]    Test my  dropdown list
     [Setup]
     Role drop down list
     Select option1(admin ) from role dropdown list
     click message
     #sleep                         10s
    Write message
    input text in the texteditor    test drop down list select admin option
    #sleep                         10s
    unselect frame
    clicking on send message
    sleep                         10s

sent checkbox (case4)
    [Documentation]    Test sent checkbox
     Check sent checkbox
     #sleep                         10s
    click message
    sleep                         10s
    Write message
    sleep                         10s
    input text in the texteditor    test checkbox sent checkbox
    sleep                         10s
    unselect frame
    clicking on send message
    sleep                         10s

recieve checkbox (case5)
    [Documentation]    Test receve checkbox
    Check recieve checkbox
     #sleep                         10s
    click message
    sleep                         10s
    Write message
    sleep                         10s
    input text in the texteditor    test checkbox recieve checkbox
    sleep                         10s
    unselect frame
    clicking on send message
    sleep                         10s
#unselect recive&sent checkboxes(case6)
  #  [Documentation]    Test my message checkbox
     Check recieve checkbox
     Check sent checkbox

sender field (case7)
    [Documentation]    Test sender field
    sender field      reem
     #sleep                         10s
    click message
    sleep                         10s
    Write message
    sleep                         10s
    input text in the texteditor    test sender field
    sleep                         10s
    unselect frame
    clicking on send message
    sleep                         10s


reciver field (case8)
    [Documentation]    Test reciver field
    Recipient field      adham
     #sleep                         10s
    click message
    sleep                         10s
    Write message
    sleep                         10s
    input text in the texteditor    Test reciver field
    sleep                         10s
    unselect frame
    clicking on send message
    sleep                         10s