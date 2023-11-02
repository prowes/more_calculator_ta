*** Settings ***
Resource  /var/lib/jenkins/workspace/MoreCalcTaRobot/Resources/PO/MainPage.robot
Resource  /var/lib/jenkins/workspace/MoreCalcTaRobot/Resources/Common.robot
Library  functions.py
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test
Documentation  Open the Calculator app and do basic arithmetic operations


*** Variables ***
${BROWSER} =  headlesschrome


*** Test Cases ***
Adding operation
    ${GOT_IP} =  functions.Get Ip
    log  ${GOT_IP}
    log  Accessing to ${GOT_IP}
    Go To  ${GOT_IP}  # should it be there?
    MainPage.Enter the first digit
    MainPage.Enter the second digit
    MainPage.Choose Plus
    MainPage.Click Count
    MainPage.Check Result
