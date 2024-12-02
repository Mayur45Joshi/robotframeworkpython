*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***

windowsSwitch
    open browser    https://demo.automationtesting.in/Windows.html  Edge
    click element    xpath://div[@id='Tabbed']/a
    switch window    title=Selenium
    click element    xpath://span[text()='Downloads']
    sleep    3

    # switch browser    for browser switching
    # to    get title
    ${title} =  get title
    #to print on console
    log to console    ${title}

    #to get Url of the current page
    ${loc}  get location
    log to console    ${loc}

    #directly navigate to other URLS
    go to    https://www.bing.com/
    ${loc2}     get location
    log to console    ${loc2}
    #back navigaiton
    go back

    #to take full page SC
    capture page screenshot    mj.png
    capture element screenshot    xpath://span[text()='Downloads']      mjele.png
    #need to give path to save the image at specified location
    #capture element screenshot    xpath://span[text()='Downloads']      c://mjele.png

