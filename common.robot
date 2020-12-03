*** Settings ***
Resource    settings.robot

Library	AppiumLibrary

*** Variables ***
${APP}            C:${/}Windows${/}System32${/}notepad.exe
${REMOTE_URL}     http://127.0.0.1:4723
#${SCREENSHOTS}    ${PROJECTROOT}${/}screenshots${/}

*** Keywords ***

Open Test Application
    Open Application   ${REMOTE_URL}  platformName=Windows  deviceName=WindowsPC  app=${APP}  automationName=appium
    sleep   10s
    


