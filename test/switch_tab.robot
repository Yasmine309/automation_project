*** Settings ***
Documentation   Test login for skolera url
Library         SeleniumLibrary
Resource     ../resource/po/message.robot
Resource     ../resource/common.robot
Suite Setup     Login to Skolera1
#Test Teardown      CLEAR
Suite Teardown    end browser
 #robot -d result test/switch_tab.robot
*** Keywords ***
*** Variables ***
${EXPECTED_URL}          https://us02web.zoom.us/j/89888530369?pwd=shAQGFIUXIhKKwYtyEfHnv6zDTvoNO.1#success
${EXPECTED_title}          zoom
*** Test Cases ***
Test Redirection To New Tab
    Go To           https://staging.skoleralms.com/zones/30/zoom/list
    click element   xpath=//*[@id="table-container"]/table/tbody/tr[1]/td[5]/div/button
    Sleep          10s
    Switch Window   ${EXPECTED_URL}
    Location Should Be  ${EXPECTED_URL}
    click element   xpath=/html/body/div[2]/div[2]/div/div[1]/div
    Close All Browsers

