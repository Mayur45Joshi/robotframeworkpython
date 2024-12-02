*** Settings ***

Library     SeleniumLibrary

*** Variables ***

${url}      https://demowebshop.tricentis.com/register
${browser}      chrome

*** Test Cases ***

waitdemo

    # to get default selenium speed
    ${speed}=        get selenium speed
    log to console      ${speed}

    # to get selenium timeout
    ${time}=    get selenium timeout
    log to console    ${time}

    open browser    ${url}        ${browser}
    maximize browser window

    # like implicit wait
    ${implicittime}     get selenium implicit wait
    log to console    ${implicittime}

    set selenium implicit wait    10

    #like a explicit wait time
    set selenium timeout    10
    wait until page contains    Register

    set selenium speed  1

    Select radio button     Gender    M
    input text      name:FirstName      Mayur
    input text      name:LastName       Joshi
    input text      name:Email          abc@email.com
    input text      name:Password       Kgn@45
    input text      name:ConfirmPassword      Kgn@45
    ${speed}=        get selenium speed
    log to console      ${speed}

    close browser

