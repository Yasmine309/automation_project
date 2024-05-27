*** Settings ***
Documentation   Test login for skolera url
Library         SeleniumLibrary
Resource     ../resource/po/message.robot
Resource     ../resource/common.robot
Suite Setup     login to skolera2
#Test Teardown      CLEAR
Suite Teardown    end browser

  # robot -d result test/data_manage_message.robot
*** Variables ***
#${CHECKBOX_XPATH}               xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[7]/span/label
${CHECKBOX_XPATH}               xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[7]/span/label

${select_message}               xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[2]/div[1]/div/div[2]/div/div[1]/div/a/div[1]/div[1]/div[2]/div/h4
${selectframe_texteditor}       xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[2]/div[2]/div/messages-conversation/div/div[3]/skolera-editor/tinymce/div/div/div[2]/iframe
${inputtext_texteditor}         id=tinymce
${unselectframe_texteditor}     SeleniumLibrary.unselect frame
${SEND_BUTTON_XPATH}           xpath=//button[contains(@class, 's-btn') and contains(@class, 'btn-primary')]

*** Keywords ***
Attempt Checkbox mymessage
    [Arguments]    ${checked}    ${unchecked}
    Click Element    ${CHECKBOX_XPATH}
    Sleep    1s
    ${is_checked}    Run Keyword And Return Status    Element Should Be Selected    ${CHECKBOX_XPATH}
    Run Keyword If    '${checked}' == 'True' and not ${is_checked}    Click Element    ${CHECKBOX_XPATH}
    Run Keyword If    '${unchecked}' == 'True' and ${is_checked}    Click Element    ${CHECKBOX_XPATH}
    Sleep    2s

Write message
  click element      ${select_message}
  sleep              10s
  Select Frame       ${selectframe_texteditor}
  sleep              10s
  [Arguments]     ${text}
  Input Text         ${inputtext_texteditor}     ${text}
  SeleniumLibrary.unselect frame
  sleep              10s
  Click Element     ${sendmessage_button}

*** Test Cases ***
Check and Uncheck my message checkbox
    [Documentation]    Test my check message checkbox
    Attempt Checkbox mymessage    checked=True    unchecked=False
    Write message    text=test unchecked checkbox my message
    sleep              10s
    Attempt Checkbox mymessage    checked=False    unchecked=True
    Write message     text=test checked checkbox my message
    sleep              10s




