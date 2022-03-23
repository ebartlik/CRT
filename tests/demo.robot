*** Settings ***
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
My Test     
   ClickText    Leads
    ClickText    New
    TypeText     First Name    Evan
    TypeText     Last Name     Bartlik
    ClickText    Save

    ClickText    Home
    
   
   



    