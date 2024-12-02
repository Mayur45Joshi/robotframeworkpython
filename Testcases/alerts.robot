*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***

AlertHandle

    open browser    https://testautomationpractice.blogspot.com/    chrome
    click element    xpath://button[@id='confirmBtn']
    maximize browser window
    sleep    3
    #handling alert
    #handle alert    accept
    #handle alert    dismiss
    #handle alert    leave

    alert should be present    Press a button!