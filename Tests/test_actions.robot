*** Settings ***
Resource  /var/lib/jenkins/workspace/MoreCalcTaRobot/Resources/PO/MainPage.robot
Resource  /var/lib/jenkins/workspace/MoreCalcTaRobot/Resources/Common.robot
Library  functions.py
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test
Documentation  Open the Calculator app and do basic arithmetic operations


*** Variables ***
${BROWSER} =  headlesschrome
${START_URL} =  http://51.20.141.158:8081
${GOT_IP} =  functions.Get Ip


*** Test Cases ***
Adding operation
    log  ${GOT_IP}
    log  Accessing to ${START_URL}
    Go To  ${START_URL}
    MainPage.Enter the first digit
    MainPage.Enter the second digit
    MainPage.Choose Plus
    MainPage.Click Count
    MainPage.Check Result
