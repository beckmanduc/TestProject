*** Settings ***
Library    SeleniumLibrary    
Variables    ../PageObjects/Locator.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    
click Register Link
    Click Link    ${link_reg}
    
Enter FirstName
    [Arguments]    ${firstName}
    Input Text    ${txt_firstName}    ${firstName}
    
Enter LastName
    [Arguments]    ${lastName}
    Input Text    ${txt_lastName}    ${lastName}    
    
Enter Phone
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}
    
Enter Email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}    
    
Enter Address1
    [Arguments]    ${address1}
    Input Text    ${txt_address1}    ${address1}    
    
Enter Address2
    [Arguments]    ${address2}
    Input Text    ${txt_address2}    ${address2}   
    
Enter City          
    [Arguments]    ${city}
    Input Text    ${txt_city}    ${city}    
    
Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state} 
    
Enter Postal Code
    [Arguments]    ${postalCode}
    Input Text    ${txt_postalCode}    ${postalCode}    
    
Select Country
    [Arguments]    ${country}
    Select From List By Label    ${drp_country}    ${country}
    
Enter UserName
    [Arguments]    ${username}
    Input Text    ${txt_userName}    ${username}
    
Enter Password
    [Arguments]    ${password}    
    Input Password    ${txt_password}    ${password}  
    
Enter Confirmed Password
    [Arguments]    ${confirmPassword}
    Input Password    ${txt_confirmPassword}    ${confirmPassword}    
    
Click Submit
    Click Button    ${btn_submit}    
    
Verify Succesful Register
    Page Should Contain    Thank you for registering.
    
Close my Browser
    Close All Browsers    
            