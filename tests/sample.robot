*** Settings ***
Library  SeleniumLibrary  timeout=20s
Resource  ../keywords/base_keyword/base_keywords.robot

Test Setup  Setup
Test Teardown  Teardown

*** Test Cases ***
Test: Sample Test To Check The Functionalities
    Login Test
#    Sample Test

*** Keywords ***
Login Test
    Login into the application

Sample Test
    log  ${browser}


