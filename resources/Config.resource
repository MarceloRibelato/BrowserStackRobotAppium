*** Settings ***
Library    AppiumLibrary
Library    ../resources/mark-test-status.py

*** Variables ***
${APP}           bs://309849d165b0eedc083da3c055994a9677cc6c57
${DEVICE}        Samsung Galaxy S22
${OS}            android
${OS_VERSION}    12.0
${PROJECT}       Demonstração
${PLATFORM_NAME}  Android
${USERNAME}=     jeanbezerra_xZDWzk
${ACCESSKEY}=    GgUczbw5CFg7gqLT8eMG
${REMOTE_URL}=   https://${USERNAME}:${ACCESSKEY}@hub-cloud.browserstack.com/wd/hub
${TIMEOUT}    30
*** Keywords ***
Abrir app
  open application    ${REMOTE_URL}
  ...    app=${APP}
  ...    name=${TEST NAME}
  ...    buildName=${PLATFORM_NAME} - ${SUITE NAME} -
  ...    projectName=Banco Master - Digital
  ...    platformName=${PLATFORM_NAME}
  ...    platformVersion=${OS_VERSION}
  ...    deviceName=${DEVICE}
  ...    browserstack.enableCameraImageInjection=${true}
  ...    browserstack.enableCameraVideoInjection=${true}
  ...    browserstack.enablePasscode=${true}
  ...    browserstack.geoLocation=Br
  ...    browserstack.interactiveDebugging=${true}
  ...    browserstack.browserstackLocal=${true}
  ...    browserstack.testObservability=${true}
  ...    unicodeKeyboard=${true}
  ...    autoGrantPermissions=${true}
  ${session_id}=    Evaluate    sys.modules['robot.libraries.BuiltIn'].BuiltIn().get_library_instance('AppiumLibrary')._current_application().session_id
  Set Test Variable    ${session_id}
  Set Appium Timeout    ${TIMEOUT}

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
