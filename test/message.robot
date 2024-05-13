*** Settings ***

Library   SeleniumLibrary

*** Variables ***

*** Test Cases ***
login
        open browser                       https://staging.skoleralms.com/       chrome
        input text                         name=username                         skolera
        input text                         name=password                         asdasd123A!

        click button                       Login
        sleep                              10s
        click element                      xpath=/html/body/app-root/div[1]/main-component/div/div/div/div/app-header/div/div[2]/div[6]
        sleep                              10s
        click element                      xpath=/html/body/app-root/div[1]/main-component/div/div/div/div/app-header/div/div[2]/div[6]/div[2]/div[3]/a
        sleep                              20s
        click element                      xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[7]/span/label
        sleep                              10s
       click element                        class=ng-input
        sleep                              10s
       click element                       xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[1]/div/div/div[1]/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]
        sleep                              10s
        click element                      xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[2]/div[1]/div/div[2]/div/div[1]/div/a/div[1]/div[1]/div[2]/div/h4
        sleep                              10s
        Select Frame                       xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-messages/div/div/div/div/div[2]/div[2]/div/messages-conversation/div/div[3]/skolera-editor/tinymce/div/div/div[2]/iframe
        sleep                              10s
        Input Text                          id=tinymce            reply message BY YASMIN
        sleep                               10s
        SeleniumLibrary.unselect frame
        sleep                               10s
       Click Element                        xpath=//button[contains(@class, 's-btn') and contains(@class, 'btn-primary')]
        sleep                               20s
       Click Element                        xpath=//button[contains(@class, 's-btn') and contains(@class, 'btn-link') and contains(@class, 'size-small') and contains(@class, 'mr-2') and contains(@class, 'text-link')]
       sleep                               10s
      click element                       xpath=//div[@class='single-attachment-container']
      choose file                           xpath=//div[@class='single-attachment-container']        ${CURDIR}${/}C:\installer\robot scripts\untitled\image (3).png



      #Choose File                           xpath=//div[@class='single-attachment-container']    C:\installer\robot scripts\untitled\image (3).png

      sleep                               40s

       #Click Element                        xpath=//div[@class='single-attachment-container']
      #sleep                               10s
   #  Choose File                          class=single-attachment-container    c:/downloads /image (3).png
  #   seleniumlibrary.press key            Enter
