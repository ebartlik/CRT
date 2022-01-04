*** Settings ***
Resource                      ../resources/common.robot
Resource                      ../resources/salesforce.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
My Test     
     ClickText                    Phone
    TypeText                     Phone                   123456789
    ClickText                    Company
    TypeText                     Company                 Copado
    TypeText                     Email                   ebartlik@copado.com

    VerifyText                   Lead

    ClickCheckbox
                
    
   



    
   
   



    