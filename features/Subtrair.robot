*** Settings ***
Resource    ../steps/Subtrair.resource
Resource    ../resources/BDDpt-br.resource
Test Setup    Abrir App
Test Teardown    Fechar app

*** Test Cases ***
CT-001: Subtrair 15 de 75
    Dado que estou no app
    Quando digito o valor 75
    E subtraio 15
    Então o resultado deve ser 60

CT-002: Subtrair 7 de 21
    Dado que estou no app
    Quando digito o valor 21
    E subtraio 7
    Então o resultado deve ser 14

CT-003: Subtrair 80 de 150
    Dado que estou no app
    Quando digito o valor 150
    E subtraio 80
    Então o resultado deve ser 70

CT-004: Subtrair 32 de 58
    Dado que estou no app
    Quando digito o valor 58
    E subtraio 32
    Então o resultado deve ser 26

CT-005: Subtrair 56 de 94
    Dado que estou no app
    Quando digito o valor 94
    E subtraio 56
    Então o resultado deve ser 38