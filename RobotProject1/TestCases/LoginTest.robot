*** Settings ***
Library    SeleniumLibrary    
Resource  ../Resources/LoginKeyword.robot
Library    RequestsLibrary      

*** Variables ***
${Browser}    chrome
${SiteUrl}    http://newtours.demoaut.com/
${user}    tutorial
${pwd}    tutorial

*** Test Cases ***
LoginTest
    Open Browser    ${SiteUrl}    ${Browser}
    Enter UserName    ${user}
    Enter Password    ${pwd}
    Click SignIn
    Sleep    3    
    Verify Succesfull Login
    Close my Browser