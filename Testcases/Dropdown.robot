*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url}      https://artoftesting.com/samplesiteforselenium
${browser}      chrome

*** Test Cases ***

DropdownSelection

    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2

    #here in Id we aheve to select main dropwon id or name and in values gives particular value
    select from list by label    testingDropdown    Automation Testing
    select from list by label    testingDropdown    Database Testing
    select from list by index   testingDropdown     2
    select from list by value    testingDropdown    Performance

    #same work for listbox also


