*** Settings ***
Resource  ../Resources/PO/Main_page.robot
Resource  ../Resources/Common.robot
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test
Documentation  Open the Calculator app and do basic arithmetic operations


*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://13.51.173.224:8081  # UNHARDCODE!


*** Test Cases ***
The adding operation is working
    log  Accessing to ${START_URL}
    Go To  ${START_URL}
    Main_page.Elements are shown
    Main_page.Enter the first digit
