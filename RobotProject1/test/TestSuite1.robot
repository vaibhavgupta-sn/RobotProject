*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup    Log    I am inside Test Setup        
Test Teardown    Log    I am inside Test Teardown    

Default Tags    Sanity

*** Test Cases ***
MyFirstTest
    [Tags]    Smoke
    Log    Hello World...   
    
MySecondTest
    Log    Hello World...
    Set Tags    regression1
    # Remove Tags    regression1
    
# FirstSeleniumTest
    # Open Browser    https://www.google.com    chrome     options=add_experimental_option("detach", True)
    # Set Browser Implicit Wait    5
    # Sleep           2
    # Input Text      name=q                    Automation
    # Press Keys      name=q                    ENTER
    # # Click Button    name=btnK    
    # Close Browser
    # Log    Test Completed
    
# SampleLoginTest
    # [Documentation]    This is a sample Login Test
    # Open Browser      ${url}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW    
    # Click Image       //img[@alt="profile picture"]
    # Click Element    link=Logout 
    # Log    Test Completed  
    # Log    This test case was executed by %{username} on %{os} 
    
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text        name=username    ${CREDENTIALS}[0]
    Input Password    name=password    ${LOGINDATA}[password]      
    Click Button      //button[@type="submit"]