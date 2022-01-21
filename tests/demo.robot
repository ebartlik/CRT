*** Settings ***
Resource                      ../resources/common.robot
Resource                      ../resources/salesforce.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
My Test     
   ClickText     Leads
    ClickText     New
    TypeText      First Name     Evan
    TypeText      Last Name      Bartlik
    ClickText     Save

    
    
    
   



    
   
   



    