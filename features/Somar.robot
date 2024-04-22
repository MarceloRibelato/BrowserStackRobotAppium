*** Settings ***
Resource    ../steps/Somar.resource
Resource    ../resources/BDDpt-br.resource
Test Teardown    Fechar app

*** Variables ***
${DEVICE}        Motorola Moto G71 5G
${OS}            android
${OS_VERSION}    11.0

*** Test Cases ***
CT-001: Somar 15 com 25
    Dado que estou no app
    Quando digito o valor 15
    E somo com 25
    Então o resultado deve ser 40

CT-002: Somar 35 com 65
    Dado que estou no app
    Quando digito o valor 35
    E somo com 65
    Então o resultado deve ser 100

CT-003: Somar 80 com 150
    Dado que estou no app
    Quando digito o valor 80
    E somo com 150
    Então o resultado deve ser 230

CT-004: Somar 27 com 44
    Dado que estou no app
    Quando digito o valor 27
    E somo com 44
    Então o resultado deve ser 71

CT-005: Somar 37 com 182
    Dado que estou no app
    Quando digito o valor 37
    E somo com 182
    Então o resultado deve ser 219