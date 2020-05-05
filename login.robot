
*** Settings ***
Library  SeleniumLibrary

test teardown
*** Variables ***
${browser}  ff
${url}  https://www.instagram.com/

*** Test Cases ***


*** Keywords ***
login case

    open Browser  ${url}  ${browser}
    maximize browser window

    click button  xpath://html/body/div[1]/section/div[1]/button
    Wait until Page Contains Element  xpath://html/body/div[1]/section/main/article/div[2]/div[1]/div/form/div[2]/div/label/input
    # for log in and password.
    ${email}  set variable  xpath://html/body/div[1]/section/main/article/div[2]/div[1]/div/form/div[2]/div/label/input
    input text  ${email}  santaskrishna@gmail.com

    ${password}  set variable  xpath://html/body/div[1]/section/main/article/div[2]/div[1]/div/form/div[3]/div/label/input
    input text  ${password}  letsdoletsdoit

    click element  xpath://html/body/div[1]/section/main/article/div[2]/div[1]/div/form/div[4]
    sleep  6s

    # for free forceful cooooookee
    Wait until Page Contains Element  xpath://html/body/div[4]/div/div/div[3]/button[2]
    click button  xpath://html/body/div[4]/div/div/div[3]/button[2]

    sleep  2s
    Execute javascript       document.body.style.MozTransform = "scale(0.7)"

