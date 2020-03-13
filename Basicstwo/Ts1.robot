*** Settings ***
Library    SeleniumLibrary 
Default Tags    Sanity test

*** Test Cases ***

LogMessage1
    [Tags]    Smoke
    Log    Hallo!    
    
LogMessage2
    [Tags]    Regression
    Log    Hallo this is regression
    
LoginMessage3
    Log    git check    
    
Logintest
    Open Browser    ${URL1}    chrome
    Set Browser Implicit Wait    10
    Input Text    name=q    opensource.demo.orangehrmlive.com
    Click Button    name=btnK
    Click Link              https://opensource-demo.orangehrmlive.com/ 
    Loginkw  
    # Input Text        name=txtUsername    @{Credentials}[0]
    # Input Password    name=txtPassword    &{LoginData}[password] 
    Click Button      name=Submit  
    Click Element     id=welcome
    Click Element     link=Logout
    Close Browser
    Log               Test completed
    Log               This test was donne by %{username} and on %{os}         
    
    
*** Variables ***
${URL1}    http://www.google.com   
${URL2}    https://opensource-demo.orangehrmlive.com/ 
@{Credentials}   Admin    admin123 
&{LoginData}       username=Admin    password=admin123  

*** Keywords ***
Loginkw
    Input Text        name=txtUsername    @{Credentials}[0]
    Input Password    name=txtPassword    &{LoginData}[password]
      
    
    
   



