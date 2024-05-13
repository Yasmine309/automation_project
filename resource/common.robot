*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN_URL}      https://staging.skoleralms.com/
${BROWSER}        Chrome
${USERNAME}       skolera
${PASSWORD}       asdasd123A!

*** Keywords ***
Login to Skolera1
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Input Text      name=username    ${USERNAME}
    Input Text      name=password    ${PASSWORD}
    Click Button    Login
    Sleep           10s

login to skolera2
        open browser                       https://staging.skoleralms.com/       chrome
        input text                         name=username                         skolera
        input text                         name=password                         asdasd123A!
        click button                       Login
        sleep                              10s

        click element                      xpath=/html/body/app-root/div[1]/main-component/div/div/div/div/app-header/div/div[2]/div[6]
        sleep                              10s
        click element                      xpath=/html/body/app-root/div[1]/main-component/div/div/div/div/app-header/div/div[2]/div[6]/div[2]/div[3]/a
        sleep                              10s


open url
         open browser                       https://staging.skoleralms.com/       chrome
login url
        open browser                       https://staging.skoleralms.com/       chrome
        input text                         name=username                         skolera
        input text                         name=password                         asdasd123A!
        click button                       Login
        sleep                              10s
message list
        click element                      xpath=/html/body/app-root/div[1]/main-component/div/div/div/div/app-header/div/div[2]/div[6]
        sleep                              10s
        click element                      xpath=/html/body/app-root/div[1]/main-component/div/div/div/div/app-header/div/div[2]/div[6]/div[2]/div[3]/a
        sleep                              10s

end browser
        close browser
CLEAR
      click element                      xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[8]/button
#go to message list

        # click element                      xpath=/html/body/app-root/div[1]/main-component/div/div/div/div/app-header/div/div[2]/div[6]
       # sleep                              10s
      #  click element                      xpath=/html/body/app-root/div[1]/main-component/div/div/div/div/app-header/div/div[2]/div[6]/div[2]/div[3]/a
      #  sleep                              20s


