*** Settings ***
Resource    ../resources/Config.resource
Resource    ../pages/Calculadora.resource

*** Keywords ***
###DADO
que estou no app
    Abrir app
    wait until element is visible    ${BOTAO_DIVIDIR}

###QUANDO
digito o valor 100
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      100

digito o valor 30
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      30

digito o valor 150
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      150

digito o valor 350
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      350

digito o valor 512
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      512

###E
divido por 5
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       5

divido por 2
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       2

divido por 15
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       15

divido por 7
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       7

divido por 32
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       32

###ENTÃO
o resultado deve ser 20
    wait until element is visible    ${BOTAO_DIVIDIR}
    click element    ${BOTAO_DIVIDIR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   20

o resultado deve ser 15
    wait until element is visible    ${BOTAO_DIVIDIR}
    click element    ${BOTAO_DIVIDIR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   15

o resultado deve ser 10
    wait until element is visible    ${BOTAO_DIVIDIR}
    click element    ${BOTAO_DIVIDIR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   10

o resultado deve ser 50
    wait until element is visible    ${BOTAO_DIVIDIR}
    click element    ${BOTAO_DIVIDIR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   50

o resultado deve ser 16
    wait until element is visible    ${BOTAO_DIVIDIR}
    click element    ${BOTAO_DIVIDIR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   16
