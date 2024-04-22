*** Settings ***
Library    AppiumLibrary
Library    ../resources/mark-test-status.py

*** Variables ***
${APP}           bs://4cc0bad26beff95e0ca0b5f70917da8d7b782e49
${DEVICE}        Samsung Galaxy S22
${OS}            android
${OS_VERSION}    12.0
${PROJECT}       Demonstração
${USERNAME}=     marceloribelato_qDZki3
${ACCESSKEY}=    xaWbMKFdMq5yqtxLVpDq
${REMOTE_URL}=   https://${USERNAME}:${ACCESSKEY}@hub-cloud.browserstack.com/wd/hub

*** Keywords ***
Abrir app
    open application    remote_url=${REMOTE_URL}    app=${APP}    device=${DEVICE}    os=${OS}    os_version=${OS_VERSION}
    # Argumentos para organização dos testes
    ...    project=${PROJECT}    build=${SUITE NAME}    name=${TEST NAME}

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