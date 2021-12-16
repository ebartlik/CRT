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
    
   



    
   
   



    