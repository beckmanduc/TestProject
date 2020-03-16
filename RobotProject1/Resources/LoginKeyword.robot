*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locator.py 

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    
Enter UserName
    [Arguments]    ${username}
    Input Text    ${txt_loginUserName}    ${username}
    
Enter Password
    [Arguments]    ${password}    
    Input Password    ${txt_loginPassword}    ${password}    
    
Click SignIn
    Click Button    ${btn_signIn}
    
Verify Succesfull Login
    Title Should Be    Find a Flight: Mercury Tours:
    
Close my Browser
    Close All Browsers        