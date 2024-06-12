
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

#${EXPECTED_URL}          https://us02web.zoom.us/j/89888530369?pwd=shAQGFIUXIhKKwYtyEfHnv6zDTvoNO.1#success${EXPECTED_URL}                       'https://us02web.zoom.us/j/83
${EXPECTED_URL}          https://us02web.zoom.us/j/83610318502?pwd=tuCVjbELX4cG9pfT7xXVPvpsav4ovz.1#success
${EXPECTED_title}          zoom

*** Test Cases ***
Test Redirection To New Tab
    Go To                 https://staging.skoleralms.com/zones/30/zoom/list
    ${main_window}        Get Window Handles
    Click Element         xpath=//*[@id="table-container"]/table/tbody/tr[1]/td[5]/div/button    #click on start meeting to redirect zoom url
    Sleep                 10s
    ${handles}            Get Window Handles
    Switch Window         ${handles}[1]    # Assuming the new tab is the second window handle
    Location Should Be    ${EXPECTED_URL}
    Title Should Be       ${EXPECTED_title}
        #click element on new tab
    click element   xpath=/html/body/div[2]/div[2]/div/div[1]/div

     Sleep                 10s
    Switch Window         ${main_window}   # Switch back to the main tab
    Close All Browsers







