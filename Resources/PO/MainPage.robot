*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${FIRST_DIGIT_SELECTOR} =  id=first_digit
${SECOND_DIGIT_SELECTOR} =  id=second_digit
${ACTIONS} =  action
${PLUS} =  +
${MINUS} =  -
${MULTIPLY} =  *
${DIVIDE} =  /

${COUNT_SELECTOR} =  id=submit

${RESULT_SELECTOR} =  id=result


*** Keywords ***
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

Choose Minus
    Wait Until Element Is Visible  ${ACTIONS}
    Select Radio Button  ${ACTIONS}  ${MINUS}

Choose Multiply
    Wait Until Element Is Visible  ${ACTIONS}
    Select Radio Button  ${ACTIONS}  ${MULTIPLY}

Choose Division
    Wait Until Element Is Visible  ${ACTIONS}
    Select Radio Button  ${ACTIONS}  ${DIVIDE}

Click Count
    Wait Until Element Is Visible  ${COUNT_SELECTOR}
    Capture Page Screenshot
    Click Button  ${COUNT_SELECTOR}

Check Result
    [Arguments]    ${EXPECTED_RESULT}
    Wait Until Element Is Visible  ${RESULT_SELECTOR}
    ${SHOWN_RESULT} =  Get Text  ${RESULT_SELECTOR}
    Capture Page Screenshot
    Should Be Equal As Integers  ${EXPECTED_RESULT}  ${SHOWN_RESULT}
