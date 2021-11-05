*** Settings ***
Resource                      ../resources/common.robot
Resource                      ../resources/salesforce.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Demo Test   
                      
    Appstate                  salesforce.Login
    VerifyText                Home
    ClickText                 Leads



    