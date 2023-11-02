*** Settings ***
Library  SeleniumLibrary
Library  functions.py


*** Keywords ***
Begin Web Test
    ${GOT_IP} =  functions.Get Ip
    Open Browser  about:blank  ${BROWSER}
    log  Accessing to ${GOT_IP}
    Go To  ${GOT_IP}
    Maximize Browser Window


End Web Test
    Close Browser