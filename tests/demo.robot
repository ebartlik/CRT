*** Settings ***
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
My Test
    ClickText    Leads
    ClickText    New
    UseModal     On
    VerifyText    New Lead
    VerifyText    New Lead
    PickList      Lead Status    Qualified
    PickList      Salutation     Mr.
    ClickText     First Name
    TypeText      First Name     Evan
    TypeText      Last Name      Bartlik
    TypeText      Company        Copado
    ClickText     Cancel         anchor=CancelEdit
    UseModal      Off