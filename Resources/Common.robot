*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}  options=add_argument(“–headless”); add_argument(“no-sandbox”)
    log  Accessing to ${START_URL}
    Go To  ${START_URL}
    Maximize Browser Window


End Web Test
    Close Browser