*** Settings ***
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
My Test     
  ClickText    Opportunities
    ClickText    New
    TypeText     Probability (%)    100
    TypeText     Amount             10000
    ClickText    Save

    
    
    
   



    
   
   



    