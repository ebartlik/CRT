*** Settings ***
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
My Test     
  ClickText    Home
    ClickText    Lead
    ClickText    New
    TypeText     First Name    Evan
    TypeText     Last Name     Bartlik
    ClickText    Save

    ClickText    Chatter
    VerifyText                 

    
    
    
   



    
   
   



    