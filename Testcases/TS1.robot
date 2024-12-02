*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${url}      https://demo.nopcommerce.com/
${browser}      chrome

*** Test Cases ***

LoginTest

    #create webdriver chrome     executable_path="path for driver"
    #open browser    https://demo.nopcommerce.com/   chrome
    open browser    ${url}  ${browser}
    click link      xpath://a[contains(text(), 'Log in' )]

    #input text    id:Email      mayurjoshi@email.com
    #input text    id:Password       joshi@45
    #click element    xpath://button[@class='button-1 login-button']
    #close browser
    LoginToApplication

*** Keywords ***

LoginToApplication

    input text    id:Email      mayurjoshi@email.com
    input text    id:Password       joshi@45
    click element    xpath://button[@class='button-1 login-button']
    close browser