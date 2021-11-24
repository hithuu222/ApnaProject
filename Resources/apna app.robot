*** Keywords ***
Opens apna application
    Open Application    ${URL}    platformName=${Platform_Name}   platformVersion=${Platform_Version}    deviceName=${Device_Name}  app=${app_path}


Select None of the above option
    Wait Until Page Contains   Continue with   timeout=40s
    Click Text     NONE OF THE ABOVE


Then Enter mobile number and click next
    Wait Until Page Contains   ${mobile}   timeout=30s
    Click Text     ${mobile}
    Wait Until Page Contains Element    ${mobile number}    timeout=30s
    Input Text      ${mobile number}    ${number}
    Click Element   ${next}


Enter the otp and click next
    Wait Until Page Contains  ${otp}  timeout=30s
    Input Text    ${otp_1}    ${otp number_1}
    Input Text    ${otp_2}    ${otp number_2}
    Input Text    ${otp_3}    ${otp number_3}
    Input Text    ${otp_4}    ${otp_number_4}


Then Choose language and give next
    Wait Until Page Contains   ${choose language}  timeout=30s
    Click text   ${language}
    Click element   ${continue}


Enter Visiting card details by clicking letsgo option
    Wait Until Page Contains   ${lets go}   timeout=30s
    Click text   ${lets go}


Then Enter personal details and click next
    Wait Until Page Contains   ${visiting card}   timeout=30s
    #enter name
    Click Text  ${name}
    Wait Until Page Contains   ${enter name}   timeout=30s
    Input Text    ${enter name}    ${full name}
    #enter city
    Click Element  ${city}
    Wait Until Page Contains   ${search box}   timeout=30s
    Input Text      ${enter city}    ${search city}
    Wait Until Page Contains   ${enter city}    timeout=30s
    Click Text     ${city name}
    #enter location
    Wait Until Page Contains    ${location}
    Click Element     ${location}
    Wait Until Page Contains    ${enter location}    timeout=40s
    Input Text     	${enter location}     ${location name}
    Wait Until Page Contains    ${select location}   timeout=30s
    Click Text    ${select location}
    #select gender
    Wait Until Page Contains  ${gender}  timeout=30s
    Click Element  ${gender}
    #click continue
    Wait Until Page Contains   ${proceed}   timeout=30s
    Click Element    ${proceed}



Select Work Experience and click next
    Wait Until Page Contains    ${experience}   timeout=30s
    #select yes option
    Click text    ${experience}
    #Enter details of work experience
    Click element  ${select experience}
    Click Element At Coordinates         429     563
    #Give job title
    Click element   ${job title}
    Input text   ${job title}   ${job name}
    #Give company name
    Click element  ${company}
    Input text   ${company}   ${company name}
    #Swipe the seekbar and give salary details
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
    Wait Until Page Contains   ${education}   timeout=30s
    Click Element        ${education}
    # Click Text     Provide the current or the highest qualification
    Click Element At Coordinates         179     1796
    Click Element     ${degree}
    Input Text     ${degree}   ${degree name}
    Wait Until Page Contains   ${search degree}
    Click Text     ${search degree}
    Click Element    ${college}
    Input Text        ${college}    ${college name}
    Wait Until Page Contains    ${search college}
    Click Text      ${search college}
    Click element   ${move}


Choose job category and give next
    Wait Until Page Contains        ${choose category}     timeout=30s
    Click element         ${category}
    Wait Until Page Contains    ${category name}      timeout=30s
    Click text       ${category name}
    Click text      ${select category}
    Wait Until Page Contains    ${click next}      timeout=30s
    Click element    ${click next}

Then give gallary details and click next
    Wait Until Page Contains   ${skip}   timeout=30s
    Click text   ${skip}

Enter contact details and give next
    Wait Until Page Contains  ${jobs}  timeout=20s
    Click text  ${jobs}
    quit application