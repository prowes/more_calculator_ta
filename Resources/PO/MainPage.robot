*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${FIRST_DIGIT_SELECTOR} =  id=first_digit
${SECOND_DIGIT_SELECTOR} =  id=second_digit

${ACTIONS} =  action
${PLUS} =  +

${COUNT} =  id=submit

${RESULT} =  id=result


*** Keywords ***
Elements Are Shown
    Wait Until Element Is Visible  ${FIRST_DIGIT_SELECTOR}
    Wait Until Element Is Visible  ${SECOND_DIGIT_SELECTOR}
    Wait Until Element Is Visible  ${PLUS}
    Wait Until Element Is Visible  ${MINUS}
    Wait Until Element Is Visible  ${MULTUPLY}
    Wait Until Element Is Visible  ${DIVIDE}

Enter the first digit
    [Arguments]    ${FIRST_DIGIT_VALUE}
    Wait Until Element Is Visible  ${FIRST_DIGIT_SELECTOR}
    Click Element  ${FIRST_DIGIT_SELECTOR}
    Input Text  ${FIRST_DIGIT_SELECTOR}  ${FIRST_DIGIT_VALUE}

Enter the second digit
    [Arguments]    ${SECOND_DIGIT_VALUE}
    Wait Until Element Is Visible  ${SECOND_DIGIT_SELECTOR}
    Click Element  ${SECOND_DIGIT_SELECTOR}
    Input Text  ${SECOND_DIGIT_SELECTOR}  ${SECOND_DIGIT_VALUE}

Choose Plus
    Wait Until Element Is Visible  ${ACTIONS}
    Select Radio Button  ${ACTIONS}  ${PLUS}

Click Count
    Wait Until Element Is Visible  ${COUNT}
    Capture Page Screenshot
    Click Button  ${COUNT}

Check Result
    Wait Until Element Is Visible  ${RESULT}
    ${SHOWN_RESULT} =  Get Text  ${RESULT}
    Capture Page Screenshot
    Should Be Equal As Integers  7  ${SHOWN_RESULT}
