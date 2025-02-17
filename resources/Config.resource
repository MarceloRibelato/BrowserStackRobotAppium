*** Settings ***
Library    AppiumLibrary
Library    ../resources/mark-test-status.py

*** Variables ***
${APP}           bs://ae49aa7eb964198e2f543b5c6ce35630dc63c67c
${DEVICE}        Samsung Galaxy S22
${OS}            android
${OS_VERSION}    12.0
${PROJECT}       Demonstração
${USERNAME}=     jeanbezerra_xZDWzk
${ACCESSKEY}=    GgUczbw5CFg7gqLT8eMG
${REMOTE_URL}=   https://${USERNAME}:${ACCESSKEY}@hub-cloud.browserstack.com/wd/hub


*** Keywords ***
Abrir app
     open application    remote_url=${REMOTE_URL}    app=${APP}    platformName=${OS}    deviceName=${DEVICE}   os_version=${OS_VERSION}
     ...    project=${PROJECT}    build=${SUITE NAME}    name=${SUITE NAME}

# Keyword que vai no Test Teardown que checa o estado do teste, que pode ser PASS ou FAILED, e então usa o script
# do BrowserStack para informar se o teste passou ou não, pois o BrowserStack não tem como saber sozinho.
Fechar app
    IF    '${TEST STATUS}' == 'PASS'
        mark test status    passed    Resultado validado com sucesso!
    ELSE
        mark test status    failed    Algo deu errado!
    END
    close all applications

Mark Test Status
    [Arguments]    ${status}    ${reason}
    TEST STATUS    ${status}    ${reason}
