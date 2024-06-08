*** Settings ***
Documentation   Test data driven uring csv file
Resource     ../resource/common.robot
Resource     ../resource/po/login.robot
Resource     ../resource/DataManager.robot
Resource     ../resource/skoleraApp.robot

Suite Setup       open url
#Test Teardown      CLEAR

Suite Teardown    end browser

# robot -d result test/testcsv.robot
*** Test Cases ***
Login Test from CSV
    [Documentation]             Test login for skolera URL using data from CSV
    Login With Credentials From CSV    Data/userlogin.csv