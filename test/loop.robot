*** Settings ***
Documentation   Test  for loop
Library         SeleniumLibrary
Resource     ../resource/common.robot
Suite Setup       login url
Suite Teardown    end browser

     #robot -d result test/loop.robot
*** Variables ***
@{items}   #item1    item2    item3
 ...   xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-insights-students/div[1]/div/div[3]/div/div/div[1]/div[2]/div/table/tbody/tr[1]/td[1]/skolera-multi-checkbox/span/label
 ...   xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-insights-students/div[1]/div/div[3]/div/div/div[1]/div[2]/div/table/tbody/tr[2]/td[1]/skolera-multi-checkbox/span/label
 ...   xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-insights-students/div[1]/div/div[3]/div/div/div[1]/div[2]/div/table/tbody/tr[3]/td[1]/skolera-multi-checkbox/span/label

*** Test Cases ***
test1
    Go To    https://staging.skoleralms.com/insights/users/students
    Sleep    10s
    #LOOP
    FOR    ${item}    IN    @{items}
    Click Element    ${item}
     END
   # Select deactivate action
    Click Element    xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-insights-students/div[1]/div/div[3]/div/div/div[1]/div[2]/div/table/thead/tr/th[10]/span/i
    Click Element    xpath=/html/body/app-root/div[1]/main-component/div/div/div/app-insights-students/div[1]/div/div[3]/div/div/div[1]/div[2]/div/table/thead/tr/th[10]/span/div/div[4]
    Click Element    xpath=/html/body/div[4]/div[2]/div/mat-dialog-container/skolera-confirmation/div/div/div/div[2]/div/button[2]
     Sleep    10s






 #EXAMPLE:
    #FOR ${USER} IN @{LIST}
         #KEYWORD ${USER}
    #END

