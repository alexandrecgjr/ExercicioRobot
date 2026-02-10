*** Settings ***
Resource         ../resources/main.robot
Test Setup       Dado que eu acesse o Organa
Test Teardown    Fechar o navegador

*** Test Cases ***

Validar preenchimento de formulário
    Dado que preencho os campos do formulário
    Quando clicar no botão criar card
    Então deve indentificar o card no time esperado

Validar criação de mais de um card
    Dado que preencho os campos do formulário
    Quando clicar no botão criar card
    Então identificar 3 cards no time esperado

Validar se é possível criar um1 card para cada time
    Dado que preencho os campos do formulário
    Quando clicar no botão criar card
    Então crio e identifico mais de um card em cada time disponível
  