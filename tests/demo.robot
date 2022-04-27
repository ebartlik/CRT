*** Settings ***
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
My Test
     ClickText    Leads
    ClickText    New
    UseModal     On
    PickList     Lead Status    Contacted
    ClickText    First Name
    TypeText     First Name     Evan
    VerifyText                  New Lead

    ClickText                   Cancel