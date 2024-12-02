*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Launchbrowser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}      ${appbrowser}
    maximize browser window
    ${title}    get title
    RETURN    ${title}