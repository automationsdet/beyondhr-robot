*** Settings ***

Library  SeleniumLibrary  timeout=20s
Library  DebugLibrary

Variables  ../../page_locators/navigation/login_page.py
Resource  ../../resources/environment/environment.robot

*** Keywords ***

Setup
  [Documentation]  Opening ${url} in ${browser} and maximizing window
  open browser  ${url}  ${browser}
  maximize browser window

Teardown
    [Documentation]  Quitting the driver and closing the browser
    close browser

Login into the application
    [Documentation]  Logging into the application with USERNAME: ${username} and PASSWORD: ${password}
    wait until element is visible  ${signin_btn}
    input text  ${username_field}  ${username}
    input text  ${password_field}  ${password}
    click button  ${signin_btn}
    wait until element is visible  ${dashboard_logo}