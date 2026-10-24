*** Settings ***
Library      SeleniumLibrary
Variables    ../variables/config.py

*** Variables ***
${USERNAME_FIELD}    id=user-name
${PASSWORD_FIELD}    id=password
${LOGIN_BUTTON}      id=login-button
${ERROR_BANNER}      css=[data-test="error"]
${PAGE_TITLE}        css=.title

*** Keywords ***
Open Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${LOGIN_BUTTON}

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text        ${USERNAME_FIELD}    ${username}
    Input Password    ${PASSWORD_FIELD}    ${password}
    Click Button      ${LOGIN_BUTTON}

Verify Products Page Is Displayed
    Wait Until Element Is Visible    ${PAGE_TITLE}
    Element Text Should Be           ${PAGE_TITLE}    Products

Verify Login Error Message
    [Arguments]    ${expected_message}
    Wait Until Element Is Visible    ${ERROR_BANNER}
    Element Text Should Be           ${ERROR_BANNER}    ${expected_message}