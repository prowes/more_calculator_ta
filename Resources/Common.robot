*** Settings ***
Library  SeleniumLibrary
Library  functions.py


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window
    ${GOT_IP} =  functions.Get Ip
    log  Accessing to ${GOT_IP}
    Go To  ${GOT_IP}

End Web Test
    Close Browser
