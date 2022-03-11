*** Settings ***
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
My Test     
   ClickText                    Leads
    ClickText                    New                timeout=60
    VerifyText                   New Lead
    ClickText                    New Lead
    TypeText                     First Name              Evan
    TypeText                     Phone                   1234567890
    ClickText                    Save
    
    TypeText                     First Name              ${first_name}

    Typetext                     Email                   ${first_name}@gmail.com

    ${first_name}                GetFieldValue                 First Name
    
    TypeText                     First Name              ${first_name}
   

    VerifyText                   About

    
   
   



    