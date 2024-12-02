*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

MouseActions

    # right click
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html       Chrome
    maximize browser window
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep    3

    # double click
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[contains(text(),'Copy Text')]
    sleep    3


    #drag and drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    id:box2    id:box106
    sleep    3


    # Scroll execute script
    go to    https://www.countries-ofthe-world.com/flags-of-the-world.html
    maximize browser window
    sleep    10
    #execute javascript    window.scrollBy(0,2500)
    #to scroll to specfic element present
    scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[45]/td[2]
    #to scorll to height of the document
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    #negaitve or opposite scrolling also possible
    sleep    10
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)


