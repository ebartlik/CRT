*** Settings ***
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Entering A Lead
    VerifyText                Home
    ClickText                 Leads
    

    VerifyText                Change Owner
    ClickText                 New
    VerifyText                Lead Information

    UseModal                  On                          # Only find fields from open modal dialog
    Picklist                  Salutation                  Ms.
    TypeText                  First Name                  Tina
    TypeText                  Last Name                   Smith
    Picklist                  Lead Status                 New
    TypeText                  Phone                       +12234567858449             
    TypeText                  Company                     Growmore                   
    TypeText                  Title                       Manager                     
    TypeText                  Email                       tina.smith@gmail.com       
    TypeText                  Website                     https://www.growmore.com/

    Picklist                  Lead Source                 Partner
    ClickText                 Save                        anchor=2
    UseModal                  Off
    Sleep                     1
    
    ClickText                 Details
    VerifyField               Name                        Ms. Tina Smith
    VerifyField               Lead Status                 New
    VerifyField               Phone                       +12234567858449
    VerifyField               Company                     Growmore
    VerifyField               Website                     https://www.growmore.com/

    






Converting A Lead To Opportunity-Account-Contact
    [tags]                    Lead
    Appstate                  Home
    LaunchApp                 Sales

    ClickText                 Leads
    ClickText                 Tina Smith

    ClickUntil                Convert Lead                Convert
    ClickText                 Opportunity                 2
    TypeText                  Opportunity Name            Growmore Pace
    ClickUntil                 Your lead has been converted             Convert                     
    VerifyText                Your lead has been converted                            timeout=30

    ClickText                 Go to Leads
    ClickText                 Opportunities
    VerifyText                Growmore Pace
    ClickText                 Accounts
    VerifyText                Growmore
    ClickText                 Contacts
    VerifyText                Tina Smith


Creating An Account
    [tags]                    Account
    Appstate                  Home
    LaunchApp                 Sales

    ClickText                 Accounts
    ClickUntil                Account Information         New

    TypeText                  Account Name                Salesforce                  anchor=Parent Account
    TypeText                  Phone                       +12258443456789             anchor=Fax
    TypeText                  Fax                         +12258443456766
    TypeText                  Website                     https://www.salesforce.com
    Picklist                  Type                        Partner
    Picklist                  Industry                    Finance

    TypeText                  Employees                   35000
    TypeText                  Annual Revenue              12 billion
    ClickText                 Save                        partial_match=False

    ClickText                 Details
    VerifyText                Salesforce
    VerifyText                35,000


Creating An Opportunity For The Account
    [tags]                    Account
    Appstate                  Home
    LaunchApp                 Sales
    ClickText                 Accounts
    VerifyText                Salesforce
    VerifyText                Opportunities

    ClickUntil                Stage                       Opportunities
    ClickUntil                Opportunity Information     New
    TypeText                  Opportunity Name            Safesforce Pace             anchor=Cancel   delay=2
    TypeText                  Search Accounts...          Salesforce                  check=False
    ClickText                 +12258443456789
    Picklist                  Type                        New Business
    ClickText                 Close Date                  Opportunity Information
    ClickText                 Next Month
    ClickText                 Today

    Picklist                  Stage                       Prospecting
    TypeText                  Amount                      5000000
    Picklist                  Lead Source                 Partner
    TypeText                  Next Step                   Qualification
    TypeText                  Description                 This is first step
    ClickText                 Save                        partial_match=False         # Do not accept partial match, i.e. "Save All"

    Sleep                     1
    ClickText                 Opportunities
    VerifyText                Safesforce Pace


Change status of opportunity
    [tags]                    status_change
    Appstate                  Home
    ClickText                 Opportunities
    ClickText                 Safesforce Pace             delay=2                     # intentionally delay action - 2 seconds
    VerifyText                Contact Roles

    ClickText                 Show actions for this object
    ClickText                 Add Contact Roles
    TypeText                  Search Contacts...          Tina    delay=2
    ClickText                 Tina Smith
    ClickText                 Next                        delay=3
    ClickText                 Edit Role: Item 1
    ClickText                 --None--
    ClickText                 Decision Maker
    ClickText                 Save                        partial_match=False
    VerifyText                Tina Smith

    ClickText                 Mark Stage as Complete
    ClickText                 Opportunities
    ClickText                 Safesforce Pace             delay=2
    VerifyStage               Qualification               true
    VerifyStage               Prospecting                 false


Create A Contact For The Account
    [tags]                    salesforce.Account
    Appstate                  Home
    LaunchApp                 Sales
    ClickText                 Accounts
    VerifyText                Salesforce
    VerifyText                Contacts

    ClickUntil                Email                       Contacts
    ClickUntil                Contact Information         New
    Picklist                  Salutation                  Mr.
    TypeText                  First Name                  Richard
    TypeText                  Last Name                   Brown
    TypeText                  Phone                       +00150345678134             anchor=Mobile
    TypeText                  Mobile                      +00150345678178
    TypeText                  Search Accounts...          Salesforce                  check=False
    ClickText                 +12258443456789

    TypeText                  Email                       richard.brown@gmail.com     anchor=Reports To
    TypeText                  Title                       Manager
    ClickText                 Save                        partial_match=False
    Sleep                     1
    ClickText                 Contacts
    VerifyText                Richard Brown



#LoginAs Example
    # [Documentation]           Example how to impersonate another user. Note: Admin rights needed
     #...                       for the user who tries to impersonate another user
     #Appstate                  Home
     #LoginAs                   Chatter Expert
    # VerifyText                Salesforce Chatter

