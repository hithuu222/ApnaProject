*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/apna app.robot
Resource    ../Resources/apna variables.robot


*** Test Cases ***
Launch the apna application and fill user details
    Opens apna application
    Select None of the above option
    Then Enter mobile number and click next
    Enter the otp and click next
Then Choose language of your choice and proceed
    Then Choose language and give next
    Enter Visiting card details by clicking letsgo option
Then Enter the required personal details and proceed
    Then Enter personal details and click next
Select Work Experience and give education details and proceed
    Select Work Experience and click next
    Then Enter education details and click next
Choose the desired job category,gallary,contact details and proceed
    Choose job category and give next
    Then give gallary details and click next
    Enter contact details and give next


