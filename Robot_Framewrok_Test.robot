*** Settings ***
Library           Selenium2Library

*** Variables ***
${Username}       id=txtUsername
${Password}       id=txtPassword
${BtnLogin}       id=btnLogin
${btnSubsribe}    id=Subscriber_link
${nameSubscribe}    id=subscriber_name
${subscribeEmail}    id=subscriber_email
${Admin}          id=txtAdmin
${btnSubscribe2}    id=btnSubscribe
${menuAdmin}      id=menu_admin_viewAdminModule
${menuJob}        id=menu_admin_Job
${menuProfile}    id=welcome
${Logout}         id=txtLogout

*** Test Cases ***
TC_NavigateToURL
    [Documentation]    This test case is to navigate user to URL https://opensource-demo-orangehrmlive.com/
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep 2s

TC_Login
    Input Text    ${Username}    Admin
    Input Text    ${Password}    admin123
    Click Button    ${BtnLogin}

TC_Subscribe
    Click Button    ${btnSubsribe}
    Input Text    ${nameSubscribe}    Noni
    Input Text    ${subscribeEmail}    nonimarine@mailinator.com
    Click Button    ${btnSubscribe2}

TC_Logout
    Click Button    ${menuProfile}
    Click Button    ${Logout}
