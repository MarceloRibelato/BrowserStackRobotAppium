*** Settings ***
Resource    ../resources/Config.resource
Resource    ../pages/Calculadora.resource

*** Keywords ***
###DADO
que estou no app
    Abrir app
    wait until element is visible    ${BOTAO_SOMAR}

###QUANDO
digito o valor 15
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      15

digito o valor 35
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      35

digito o valor 80
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      80

digito o valor 27
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      27

digito o valor 37
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      37

###E
somo com 25
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       25

somo com 65
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       65

somo com 150
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       150

somo com 44
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       44

somo com 182
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       182

###ENTÃO
o resultado deve ser 40
    wait until element is visible    ${BOTAO_SOMAR}
    click element    ${BOTAO_SOMAR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   40

o resultado deve ser 100
    wait until element is visible    ${BOTAO_SOMAR}
    click element    ${BOTAO_SOMAR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   100

o resultado deve ser 230
    wait until element is visible    ${BOTAO_SOMAR}
    click element    ${BOTAO_SOMAR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   230

o resultado deve ser 71
    wait until element is visible    ${BOTAO_SOMAR}
    click element    ${BOTAO_SOMAR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   71

o resultado deve ser 219
    wait until element is visible    ${BOTAO_SOMAR}
    click element    ${BOTAO_SOMAR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   219