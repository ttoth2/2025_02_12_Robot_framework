*** Settings ***
Library           Selenium2Library

*** Test Cases ***
logintest
    Open Browser    https://www.mikrosat.hu/    firefox
    Click Element    //*[@id="profile__btn"]
    Input Text    //*[@id="shop_user_login"]    toth.tamas@diak.szbi-pg.hu
    Input Password    //*[@id="shop_pass_login"]    4c8c15
    Click Element    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/form/div[1]/button
    Click Element    //*[@id="profile__btn"]
    Element Text Should Be    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/div[1]/div[2]/div[1]    Belépve, mint:
    Close Browser

registtest
    Open Browser    https://www.mikrosat.hu/    firefox
    Click Element    //*[@id="profile__btn"]
    Click Element    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/div[2]/div[1]/a
    Input Password    //*[@id="passwd1"]    4c8c15
    Input Text    //*[@id="emai"]    toth.tamas@diak.szbi-pg.hu
    Input Password    //*[@id="passwd2"]    4c8c15
    Click Element    //*[@id="is-person"]
    Input Text    //*[@id="kap_mobile_sub"]    201032453
    Input Text    //*[@id="default_nev"]    mikrosattest
    Input Text    //*[@id="default_irany"]    6100
    Input Text    //*[@id="default_varos"]    Kiskunfélegyháza
    Input Text    //*[@id="default_utca"]    20
    Click Element    //*[@id="button_reg"]
