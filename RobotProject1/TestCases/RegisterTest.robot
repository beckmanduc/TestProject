*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/RegisterKeyword.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    http://newtours.demoaut.com/

*** Test Cases ***
RegisterTest
    Open my Browser    ${SiteUrl}    ${Browser}
    click Register Link
    Enter FirstName    Ben
    Enter LastName     bman
    Enter Phone        0392742735
    Enter Email        benbman22@gmail.com
    Enter Address1     VietName
    Enter Address2     USA
    Enter City         HOCHIMINH
    Enter State        Lamdong
    Enter Postal Code    72
    Select Country    CANADA
    Enter UserName    8beta
    Enter Password    Svcmark04
    Enter Confirmed Password    Svcmark04
    Click Submit
    Verify Succesful Register
    # Close my Browser
    