*** Settings ***
Resource    ../resources/Config.resource
Resource    ../pages/Calculadora.resource

*** Keywords ***
###DADO
que estou no app
    Abrir app
    wait until element is visible    ${BOTAO_MULTIPLICAR}

###QUANDO
digito o valor 7
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      7

digito o valor 15
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      15

digito o valor 16
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      16

digito o valor 12
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      12

digito o valor 125
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      125

###E
multiplico por 3
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       3

multiplico por 5
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       5

multiplico por 8
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       8

multiplico por 12
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       12

multiplico por 4
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       4

###ENTÃO
o resultado deve ser 21
    wait until element is visible    ${BOTAO_MULTIPLICAR}
    click element    ${BOTAO_MULTIPLICAR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   21

o resultado deve ser 75
    wait until element is visible    ${BOTAO_MULTIPLICAR}
    click element    ${BOTAO_MULTIPLICAR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   75

o resultado deve ser 128
    wait until element is visible    ${BOTAO_MULTIPLICAR}
    click element    ${BOTAO_MULTIPLICAR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   128

o resultado deve ser 144
    wait until element is visible    ${BOTAO_MULTIPLICAR}
    click element    ${BOTAO_MULTIPLICAR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   144

o resultado deve ser 500
    wait until element is visible    ${BOTAO_MULTIPLICAR}
    click element    ${BOTAO_MULTIPLICAR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   500