*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://artoftesting.com/samplesiteforselenium
${browser}      chrome

*** Test Cases ***
TestingRadioButtonAndCheckbox
    open browser    ${url}  ${browser}
    maximize browser window
    #set selenium speed    1

    # name and value in xpath comp
    select radio button    gender   male
    select radio button    gender   female

    # value in xpath
    select checkbox    Automation
    select checkbox    Performance

    unselect checkbox   Automation
    unselect checkbox   Performance

