*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}  options=${chrome_options}
    log  Accessing to ${START_URL}
    Go To  ${START_URL}
    Maximize Browser Window


End Web Test
    Close Browser