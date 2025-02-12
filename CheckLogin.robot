*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login
    Open Browser    https:\\www.saucedemo.com    firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Text    //*[@id="password"]    secret_sauce
    Click Element    //*[@id="login-button"]
    Close Browser

LoginWithEmptyPassword
    Open Browser    https:\\www.saucedemo.com    firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Text    //*[@id="password"]    ${EMPTY}
    Click Element    //*[@id="login-button"]
    Element Should Not Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface*: Password is required

LoginWithEmptyUsername
    Open Browser    https:\\www.saucedemo.com    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Text    //*[@id="password"]    secret_sauce
    Click Element    //*[@id="login-button"]
    Element Should Not Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface*: Username is required

LoginWithEmptyPasswordAndEmptyUsername
    Open Browser    https:\\www.saucedemo.com    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Text    //*[@id="password"]    ${EMPTY}
    Click Element    //*[@id="login-button"]
    Element Should Not Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface*: Username is required
