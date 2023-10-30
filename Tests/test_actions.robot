*** Settings ***
Resource  /var/lib/jenkins/workspace/MoreCalcTaRobot/Resources/PO/MainPage.robot
Resource  /var/lib/jenkins/workspace/MoreCalcTaRobot/Resources/Common.robot
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test
Documentation  Open the Calculator app and do basic arithmetic operations


*** Variables ***
${BROWSER} =  headlesschrome
#${options} =  add_argument(“–headless”); add_argument(“no-sandbox”)
${START_URL} =  http://16.16.201.200:8081  # UNHARDCODE!


*** Test Cases ***
The adding operation is working
    log  Accessing to ${START_URL}
    Go To  ${START_URL}
    Main_page.Elements Are Shown
