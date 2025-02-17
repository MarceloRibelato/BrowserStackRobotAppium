*** Settings ***
Resource    ../steps/Multiplicar.resource
Resource    ../resources/BDDpt-br.resource
Test Setup    Abrir App
Test Teardown    Fechar app


*** Variables ***
${DEVICE}        Google Pixel 6
${OS}            android
${OS_VERSION}    12.0

*** Test Cases ***
CT-001: Multiplicar 7 por 3
    Dado que estou no app
    Quando digito o valor 7
    E multiplico por 3
    Então o resultado deve ser 21

CT-002: Multiplicar 15 por 5
    Dado que estou no app
    Quando digito o valor 15
    E multiplico por 5
    Então o resultado deve ser 75

CT-003: Multiplicar 16 por 8
    Dado que estou no app
    Quando digito o valor 16
    E multiplico por 8
    Então o resultado deve ser 128

CT-004: Multiplicar 12 por 12
    Dado que estou no app
    Quando digito o valor 12
    E multiplico por 12
    Então o resultado deve ser 144

CT-005: Multiplicar 125 por 4
    Dado que estou no app
    Quando digito o valor 125
    E multiplico por 4
    Então o resultado deve ser 500