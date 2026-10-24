*** Settings ***
Documentation     Login feature tests for saucedemo.com
Resource          ../resources/login_page.robot
Variables         ../variables/config.py
Test Setup        Open Login Page
Test Teardown     Close All Browsers

*** Test Cases ***
Valid User Can Login Successfully
    [Documentation]    A valid user should land on the Products page
    [Tags]    smoke    login
    Login With Credentials    ${VALID_USER}    ${PASSWORD}
    Verify Products Page Is Displayed

Invalid Password Shows Error Message
    [Documentation]    Wrong password should display an error banner
    [Tags]    negative    login
    Login With Credentials    ${VALID_USER}    wrong_password
    Verify Login Error Message    ${LOGIN_ERROR_MSG}

Locked Out User Cannot Login
    [Documentation]    A locked user should see the locked-out message
    [Tags]    negative    login
    Login With Credentials    ${LOCKED_USER}    ${PASSWORD}
    Verify Login Error Message    ${LOCKED_ERROR_MSG}