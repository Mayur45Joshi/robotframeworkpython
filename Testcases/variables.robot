# user defined keywords without arguments


#*** Settings ***
#
#Library    SeleniumLibrary
#
#*** Variables ***
#
#${url}      https://www.google.com/
#${browser}      chrome
#
#
#*** Test Cases ***
#
#TC1
#    launchbrowser
#    input text    name:username     mercury
#    input text    name:lastname     admin
#
#*** Keywords ***
#
#Launchbrowser
#    open browser    ${url}      ${browser}
#    maximize browser window
#

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

## user defined keywords with arguments
#
#
#*** Settings ***
#
#Library    SeleniumLibrary
#
#*** Variables ***
#
#${url}      https://www.google.com/
#${browser}      chrome
#
#
#*** Test Cases ***
#
#TC1
#    launchbrowser   ${url}   ${browser}}
#    input text    name:username     mercury
#    input text    name:lastname     admin
#
#*** Keywords ***
#
#Launchbrowser
#    [Arguments]    ${appurl}    ${appbrowser}
#    open browser    ${appurl}      ${appbrowser}
#    maximize browser window

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# user defined keywords with arguments    and return value


*** Settings ***

Library    SeleniumLibrary
Resource    ../Resources/resource.robot

*** Variables ***

${url}      https://practicetestautomation.com/practice-test-login/
${browser}      chrome


*** Test Cases ***

TC1
    ${pagetitle}=   launchbrowser   ${url}   ${browser}
    log to console    ${pagetitle}
    # to give page title at reports
    log     ${pagetitle}
    input text    name:username     mercury
    input text    name:password     admin

#*** Keywords ***


