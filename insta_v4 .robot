*** Settings ***
Library  SeleniumLibrary
test teardown
*** Variables ***
${browser}  ff
${url}  https://www.instagram.com/

*** Test Cases ***
Sample test case for login
    open Browser  ${url}  ${browser}
    maximize browser window

    click button  xpath://html/body/div[1]/section/div[1]/button
    Wait until Page Contains Element  xpath://html/body/div[1]/section/main/article/div[2]/div[1]/div/form/div[2]/div/label/input
    # for log in and password.
    ${email}  set variable  xpath://html/body/div[1]/section/main/article/div[2]/div[1]/div/form/div[2]/div/label/input
    input text  ${email}  *************.com

    ${password}  set variable  xpath://html/body/div[1]/section/main/article/div[2]/div[1]/div/form/div[3]/div/label/input
    input text  ${password}  ***********

    click element  xpath://html/body/div[1]/section/main/article/div[2]/div[1]/div/form/div[4]
    sleep  6s

    # for free forceful cooooookee
    Wait until Page Contains Element  xpath://html/body/div[4]/div/div/div[3]/button[2]
    click button  xpath://html/body/div[4]/div/div/div[3]/button[2]

    sleep  2s
    Execute javascript       document.body.style.MozTransform = "scale(0.9)"
    Press Keys  None  SPACE
        FOR     ${i}   IN RANGE    1  8
            Page should contain element   xpath://html/body/div[1]/section/main/section/div[1]/div[1]/div
            Wait until Page Contains Element   xpath://html/body/div[1]/section/main/section/div[1]/div[1]/div/article[${i}]
            Click element  xpath://html/body/div[1]/section/main/section/div[1]/div[1]/div/article[${i}]/div[2]/section[1]/span[1]/button
            sleep  1s
            #Press Keys  None  SPACE
           # Wait until Page Contains Element   xpath://html/body/div[1]/section/main/section/div[1]/div[1]/div/article[${i+1}]
        END

   close browser
*** Keywords ***
