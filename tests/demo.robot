*** Settings ***

Library    QForce

Library    QWeb
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
My Test
    ClickText    Leads
    ClickText    New
    UseModal     On
    PickList     Lead Status    Contacted
    PickList     Salutation     Mr.
    HoverText    First Name
    TypeText     First Name     Evan
    TypeText     Last Name      Bartlik
    TypeText     Company        Copado
    ClickText    Cancel         anchor=CancelEdit
    UseModal     Off
    ClickText    Home

    VerifyNoText                  New