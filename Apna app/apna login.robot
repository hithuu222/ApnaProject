*** Keywords ***
Opens apna application
    Open Application    ${URL}    platformName=${Platform_Name}   platformVersion=${Platform_Version}    deviceName=${Device_Name}  app=${app_path}


Select None of the above option
    Wait for text on Screen and click Text   NONE OF THE ABOVE



Then Enter mobile number and click next
    Wait for text on Screen and click Text   ${mobile}
    Wait for Element on Screen  ${mobile number}
    Input Text      ${mobile number}    ${number}
    Click Element   ${next}


Enter the otp and click next
    Wait for text on Screen and Input Text         ${otp}      ${otp_1}            9
    Wait for text on Screen and Input Text          ${otp}     ${otp_2}           6
    Wait for text on Screen and Input Text          ${otp}     ${otp_3}          2
    Wait for text on Screen and Input Text          ${otp}     ${otp_4}         5


Then Choose language and give next
    Wait for text on Screen     ${choose language}
    Click text   ${language}
    Click element   ${continue}


Enter Visiting card details by clicking letsgo option
    Wait for text on Screen and click Text  ${lets go}



Then Enter personal details and click next

    Wait for Element on Screen     ${enter name}
    Input Text   ${enter name}   ${full name}
    Click Element   ${city}
    Wait for Element on Screen   ${search box}
    Input Text      ${enter city}    ${search city}
    Wait for Element on Screen   ${enter city}
    Click Text     ${city name}
    Wait for text on Screen and click Text    ${apna}



    Click Element                             ${Job_Location}

    Wait for text on Screen                   ${Set_Location}

    Input Text                                ${Search_Location}           ${Location_Name}
    Wait for text on Screen and click Text                    ${Full_Location}
    #select gender
    Click Element    ${gender}
    #click continue
    Click Element    ${proceed}



Select Work Experience and click next
    Wait for text on Screen and click text   ${experience}
    Click element  ${select experience}
    Click Element At Coordinates         429     563
    Click element   ${job title}
    Input text   ${job title}   ${job name}
    Click element  ${company}
    Input text   ${company}   ${company name}
    ${element_location}=    Get Element Location   ${salary}
    ${element_size}=    Get Element Size     ${salary}
    #Log To Console      ${element_size}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.6)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.8)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.6)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400
    Click text  ${work}
    Click element  ${go}


Then Enter education details and click next
    Wait for Element on Screen   ${education}
    Click Element   ${education}
    # Click Text     Provide the current or the highest qualification
    Click Element At Coordinates         179     1796
    Click Element     ${degree}
    Input Text     ${degree}   ${degree name}
    Wait for text on Screen and click Text    ${search degree}
    Click Element    ${college}
    Input Text        ${college}    ${college name}
    Wait for text on Screen and click Text    ${search college}
    Click element   ${move}


Choose job category and give next
    Wait for text on Screen    ${choose category}
    Click element         ${category}
    Wait for text on Screen and click Text       ${category name}
    Click text      ${select category}
    Wait for Element on Screen    ${click next}
    Click Element     ${click next}

Then give gallary details and click next
    Wait for text on Screen and click Text   ${skip}

Enter contact details and give next
    Wait for text on Screen and click Text   ${jobs}
    quit application