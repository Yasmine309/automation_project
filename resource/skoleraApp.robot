*** Settings ***
Library    SeleniumLibrary
Library    ../CustomLibs/Csv.py
Resource     ../resource/common.robot
Resource     ../resource/po/login.robot
Resource     ../resource/DataManager.robot
#create one keyword in app keyword file for the common steps 
*** Keywords ***
Login With Credentials From CSV
    [Documentation]    Log in with credentials from a CSV file
    [Arguments]    ${filepath}
    ${login_data}=    Read Csv File    ${filepath}
    FOR    ${row}    IN    @{login_data}[1:]     #Skip header row
        ${username}=    Set Variable    ${row[0]}
        ${password}=    Set Variable    ${row[1]}
        Input Username    ${username}
        Input Password    ${password}
        Click Login Button
        Sleep    10s
    END
