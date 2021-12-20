*** Settings ***
Resource                      ../resources/common.robot
Resource                      ../resources/salesforce.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Enter a Lead     
    Appstate                  Login          
    ClickText                 Leads        
    VerifyText                Change Owner
    ClickText                 New
    VerifyText                Lead Information

    ClickText                 Home

    ClickText     Opportunities
    ClickText     New
    TypeText      Opportunity Name    Test Opp
    VerifyText    --None--
    ClickText     Save

    ${myvariable}                     GetText    Search this list

    VerifyText          ${myvariable}              
    
   



    
   
   



    