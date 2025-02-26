*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login
    Open Browser    https:\\www.optikart.hu    firefox
    Click Element    //*[@id="menu-1-2101d9db"]/li[6]/a
    Click Element    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    tamas
    Input Password    //*[@id="user_password-5474"]    HOHOHO3HEHEHE
    Click Element    //*[@id="um-submit-btn"]
    Close Browser

login_empty_password
    Open Browser    https:\\www.optikart.hu    firefox
    Click Element    //*[@id="menu-1-2101d9db"]/li[6]/a
    Click Element    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    tamas
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

login_empty_username
    Open Browser    https:\\www.optikart.hu    firefox
    Click Element    //*[@id="menu-1-2101d9db"]/li[6]/a
    Click Element    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    HOHOHO3HEHEHE
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser

logine_empty_credentials
    Open Browser    https:\\www.optikart.hu    firefox
    Click Element    //*[@id="menu-1-2101d9db"]/li[6]/a
    Click Element    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

login_wrong_username
    Open Browser    https:\\www.optikart.hu    firefox
    Click Element    //*[@id="menu-1-2101d9db"]/li[6]/a
    Click Element    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    tamas
    Input Password    //*[@id="user_password-5474"]    HOHOHO3HEHEHE
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser
