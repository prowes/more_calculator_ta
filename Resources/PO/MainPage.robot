*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${FIRST_DIGIT_VALUE} =  id=first_digit
${SECOND_DIGIT_VALUE} =  id=second_digit

${ACTIONS} =  action
${PLUS} =  +

${COUNT} =  id=submit

${RESULT} =  id=result


*** Keywords ***
Elements Are Shown
    Wait Until Element Is Visible  ${FIRST_DIGIT_VALUE}
    Wait Until Element Is Visible  ${SECOND_DIGIT_VALUE}
    Wait Until Element Is Visible  ${PLUS}
    Wait Until Element Is Visible  ${MINUS}
    Wait Until Element Is Visible  ${MULTUPLY}
    Wait Until Element Is Visible  ${DIVIDE}

Enter the first digit
    Wait Until Element Is Visible  ${FIRST_DIGIT_VALUE}
    Click Element  ${FIRST_DIGIT_VALUE}
    Input Text  ${FIRST_DIGIT_VALUE}  5

Enter the second digit
    Wait Until Element Is Visible  ${SECOND_DIGIT_VALUE}
    Click Element  ${SECOND_DIGIT_VALUE}
    Input Text  ${SECOND_DIGIT_VALUE}  2

Choose Plus
    Wait Until Element Is Visible  ${ACTIONS}
    Select Radio Button  ${ACTIONS}  ${PLUS}

Click Count
    Wait Until Element Is Visible  ${COUNT}
    Click Button  ${COUNT}

Check Result
    Wait Until Element Is Visible  ${RESULT}
    ${SHOWN_RESULT} =  Get Text  ${RESULT}
    Should Be Equal As Integers  7  {SHOWN_RESULT}