*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MESSAGE_PADGE}                xpath=/html/body/app-root/div[1]/main-component/div/div/div/div/app-header/div/div[2]/div[6]
${SEEALL_MESSAGE}               xpath=/html/body/app-root/div[1]/main-component/div/div/div/div/app-header/div/div[2]/div[6]/div[2]/div[3]/a
${mymessage_checkbox}           xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[7]/span/label
${ROLE_DROBDOWN}                class=ng-input
${ROLE_option1}                 xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[1]/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]
${ROLE_option2}                 xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[1]/div/ng-select/ng-dropdown-panel/div/div[2]/div[2]
${ROLE_option3}                 xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[1]/div/ng-select/ng-dropdown-panel/div/div[2]/div[3]
${sent_checkbox}                xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[4]/div/span[1]/label/div
${recieve_checkbox}             xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[4]/div/span[2]/label/div
${sender_field}                 xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[2]/div/input
${Recipient_field}              xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[3]/div/input

${CHECKBOX_XPATH}               xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[7]/span/label


${select_message}               xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[2]/div[1]/div/div[2]/div/div[1]/div/a/div[1]/div[1]/div[2]/div/h4
${selectframe_texteditor}       xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[2]/div[2]/div/messages-conversation/div/div[3]/skolera-editor/tinymce/div/div/div[2]/iframe
${inputtext_texteditor}         id=tinymce
${unselectframe_texteditor}     SeleniumLibrary.unselect frame
${sendmessage_button}           xpath=//button[contains(@class, 's-btn') and contains(@class, 'btn-primary')]
#${sendmessage2_button}          class=s-btn btn-primary



*** Keywords ***
go to message list
     click element      ${MESSAGE_PADGE}
     click element      ${SEEALL_MESSAGE}

Check on my message checkbox
  click element      ${mymessage_checkbox}

click message
  click element      ${select_message}
Write message
  Select Frame       ${selectframe_texteditor}
input text in the texteditor
  [Arguments]     ${text}
  Input Text         ${inputtext_texteditor}     ${text}
unselect frame
  SeleniumLibrary.unselect frame
clicking on send message
  Click Element     ${sendmessage_button}

Role drop down list
  click element      ${ROLE_DROBDOWN}

Select option1(student) from role dropdown list
    click element       ${ROLE_option1}

Select option1(teacher ) from role dropdown list
     click element      ${ROLE_option2}

Select option1(admin ) from role dropdown list
     click element     ${ROLE_option3}

Check sent checkbox
     click element     ${sent_checkbox}

Check recieve checkbox
    click element       ${recieve_checkbox}

sender field
   [Arguments]     ${text}
    input text      ${sender_field}        ${text}


Attempt Checkbox mymessage
    [Arguments]    ${checked}    ${unchecked}
    Click Element    ${CHECKBOX_XPATH}
    Sleep    1s
    ${is_checked}    Run Keyword And Return Status    Element Should Be Selected    ${CHECKBOX_XPATH}
    Run Keyword If    '${checked}' == 'True' and not ${is_checked}    Click Element    ${CHECKBOX_XPATH}
    Run Keyword If    '${unchecked}' == 'True' and ${is_checked}    Click Element    ${CHECKBOX_XPATH}
    Sleep    2s

Write message2
  click element      ${select_message}
  sleep              10s
  Select Frame       ${selectframe_texteditor}
  sleep              10s
  [Arguments]     ${text}
  Input Text         ${inputtext_texteditor}     ${text}
  SeleniumLibrary.unselect frame
  sleep              10s
  Click Element     ${sendmessage_button}


Recipient field
    [Arguments]     ${text}
    input text       ${Recipient_field}     ${text}

