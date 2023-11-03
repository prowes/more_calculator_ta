*** Settings ***
Resource  /var/lib/jenkins/workspace/MoreCalcTaRobot/Resources/PO/MainPage.robot
Resource  /var/lib/jenkins/workspace/MoreCalcTaRobot/Resources/Common.robot
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test
Documentation  Open the Calculator app and do basic arithmetic operations


*** Variables ***
${BROWSER} =  headlesschrome


*** Test Cases ***
Adding operation
    MainPage.Enter the first digit  5
    MainPage.Enter the second digit  2
    MainPage.Choose Plus
    MainPage.Click Count
    MainPage.Check Result  7

Subtraction operation
    MainPage.Enter the first digit  17
    MainPage.Enter the second digit  8
    MainPage.Choose Minus
    MainPage.Click Count
    MainPage.Check Result  9

Multiplication operation
    MainPage.Enter the first digit  4
    MainPage.Enter the second digit  9
    MainPage.Choose Multiply
    MainPage.Click Count
    MainPage.Check Result  36

Division operation
    MainPage.Enter the first digit  60
    MainPage.Enter the second digit  3
    MainPage.Choose Division
    MainPage.Click Count
    MainPage.Check Result  22

