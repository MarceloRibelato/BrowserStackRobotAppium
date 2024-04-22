*** Settings ***
Resource    ../resources/Config.resource
Resource    ../pages/Calculadora.resource

*** Keywords ***
###DADO
que estou no app
    Abrir app
    wait until element is visible    ${BOTAO_SUBTRAIR}

###QUANDO
digito o valor 75
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      75

digito o valor 21
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      21

digito o valor 150
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      150

digito o valor 58
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      58

digito o valor 94
    wait until element is visible    ${CAMPO_PRIMEIRO_NUMERO}
    input text    ${CAMPO_PRIMEIRO_NUMERO}      94

###E
subtraio 15
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       15

subtraio 7
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       7

subtraio 80
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       80

subtraio 32
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       32

subtraio 56
    wait until element is visible    ${CAMPO_SEGUNDO_NUMERO}
    input text    ${CAMPO_SEGUNDO_NUMERO}       56

###ENTÃO
o resultado deve ser 60
    wait until element is visible    ${BOTAO_SUBTRAIR}
    click element    ${BOTAO_SUBTRAIR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   60

o resultado deve ser 14
    wait until element is visible    ${BOTAO_SUBTRAIR}
    click element    ${BOTAO_SUBTRAIR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   14

o resultado deve ser 70
    wait until element is visible    ${BOTAO_SUBTRAIR}
    click element    ${BOTAO_SUBTRAIR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   70

o resultado deve ser 26
    wait until element is visible    ${BOTAO_SUBTRAIR}
    click element    ${BOTAO_SUBTRAIR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   26

o resultado deve ser 38
    wait until element is visible    ${BOTAO_SUBTRAIR}
    click element    ${BOTAO_SUBTRAIR}
    wait until element is visible    ${RESULTADO}
    element should contain text      ${RESULTADO}   38