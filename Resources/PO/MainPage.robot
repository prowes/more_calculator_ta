*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${FIRST_DIGIT_VALUE} =  id=first_digit
${SECOND_DIGIT_VALUE} =  id=second_digit
${PLUS} =  id=action-0
${MINUS} =  id=action-1
${MULTUPLY} =  id=action-2
${DIVIDE} =  id=action-3
${COUNT} =  id=submit

${RESULT} =  id=result


*** Keywords ***
Elements are shown
    Wait Until Element Is Visible  ${FIRST_DIGIT_VALUE}
    Wait Until Element Is Visible  ${SECOND_DIGIT_VALUE}
    Wait Until Element Is Visible  ${PLUS}
    Wait Until Element Is Visible  ${MINUS}
    Wait Until Element Is Visible  ${MULTUPLY}
    Wait Until Element Is Visible  ${DIVIDE}

Enter the first digit
    Wait Until Element Is Visible  ${FIRST_DIGIT_VALUE}
    Click Element  ${FIRST_DIGIT_VALUE}
    Input Text  5  ${FIRST_DIGIT_VALUE}  # REPLACE
