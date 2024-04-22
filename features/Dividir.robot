*** Settings ***
Resource    ../steps/Dividir.resource
Resource    ../resources/BDDpt-br.resource
Test Teardown    Fechar app

*** Test Cases ***
CT-001: Dividir 100 por 5
    Dado que estou no app
    Quando digito o valor 100
    E divido por 5
    Então o resultado deve ser 20

CT-002: Dividir 30 por 2
    Dado que estou no app
    Quando digito o valor 30
    E divido por 2
    Então o resultado deve ser 15

CT-003: Dividir 150 por 15
    Dado que estou no app
    Quando digito o valor 150
    E divido por 15
    Então o resultado deve ser 10

CT-004: Dividir 350 por 7
    Dado que estou no app
    Quando digito o valor 350
    E divido por 7
    Então o resultado deve ser 50

CT-005: Dividir 512 por 32
    Dado que estou no app
    Quando digito o valor 512
    E divido por 32
    Então o resultado deve ser 16