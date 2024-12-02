*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url}  https://demo.nopcommerce.com/
${browser}  chrome


*** Test Cases ***

InputboxTesting

    open browser    ${url}  ${browser}
    maximize browser window
    click link    xpath://a[contains(text(), 'Log in' )]
    title should be    nopCommerce demo store. Login

    ${"emailtext"}    set variable    id:Email
    element should be enabled   ${"emailtext"}
    element should be visible    ${"emailtext"}
    input text  ${"emailtext"}      mayur@email.com
    sleep    5
    clear element text  ${"emailtext"}
    sleep    5
    close browser

