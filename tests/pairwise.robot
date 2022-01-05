Pairwise Example
    My test case
    [Tags]             testgen          nwise=2
    *TypeText        First name     [John, Jane]
    *TypeText        Last name     [Johnson, Jameson]
     ${firstName}     [John, Jane]
    ${lastName}     [Johnson, Jameson]
    log             ${firstName}
    log             ${lastName}
