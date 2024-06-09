*** Settings ***
Documentation    Get data from external files using a CSV file
Library     ../CustomLibs/Csv.py

*** Keywords ***
Get Csv Data
    [Arguments]    ${filepath}
    ${Data}    read_csv_file    ${filepath}
    [Return]    ${Data}


