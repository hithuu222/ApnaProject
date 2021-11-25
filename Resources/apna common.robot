*** Settings ***
Resource    ../Resources/apna variables.robot
Resource    ../Apna app/apna login.robot


*** Keywords ***
Wait for Element on Screen
     [Arguments]   ${element}
     Wait Until Page Contains Element    ${element}   timeout=30s
Wait for Element on Screen and click Element
     [Arguments]   ${element}
     Wait Until Page Contains Element    ${element}   timeout=30s
     Click Element                        ${element}   timeout=30s
Wait for text on Screen and click Text
     [Arguments]   ${text}
     Wait Until Page Contains    ${text}    timeout=30s
     Click Text                  ${text}   timeout=30s
Wait for text on Screen
     [Arguments]   ${text}
     Wait Until Page Contains    ${text}    timeout=30s

Wait for text on Screen and Input Text
     [Arguments]   ${text}   ${number}  ${OTP}
     Wait Until Page Contains    ${text}    timeout=30s
     Input Text                  ${number}   timeout=30s

