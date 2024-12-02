*** Settings ***

Library    SeleniumLibrary
#Resource    frameshandle.py

*** Test Cases ***

FramesHandle

    open browser    https://ui.vision/demo/webtest/frames/    chrome
    select frame    xpath://frame[@src='frame_1.html']
    input text    //input[@name='mytext1']      mayur
    unselect frame
    #click element    xpath://button[@id='confirmBtn']
    sleep    1

    select frame    xpath://frame[@src='frame_2.html']
    input text    //input[@name='mytext2']      joshi
    unselect frame
    sleep    1

    select frame    xpath://frame[@src='frame_3.html']
    select frame    xpath://iframe[@src='https://docs.google.com/forms/d/1yfUq-GO9BEssafd6TvHhf0D6QLDVG3q5InwNE2FFFFQ/viewform?embedded=true']
    click element    xpath://a[text()='Sign in to Google']
    unselect frame
    sleep    1

    select frame    xpath://frame[@src='frame_4.html']
    input text    //input[@name='mytext4']      frame4
    sleep    3


