*** Settings ***
Documentation   This robot file will have any custom keywords designed to improve abstraction and make certain actions simpler
Resource        settings.robot

*** Keywords ***

Click On Element
    [Arguments]  ${element}
    wait until page contains element  ${element}
    click element  ${element}

Assert text in page
    [Arguments]  ${element}   ${textToVerify}
    wait until page contains element     ${element}
    ${expected}=    get text    ${element}
    should be equal     ${expected}   ${textToVerify}
