*** Settings ***
Resource                      ../resources/common.robot
Resource                      ../resources/salesforce.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Demo Test               
    VerifyText         Leads       
    
   
   



    