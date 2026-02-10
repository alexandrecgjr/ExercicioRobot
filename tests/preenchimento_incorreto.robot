*** Settings ***
Resource         ../resources/main.robot
Test Setup       Dado que eu acesse o Organa
Test Teardown    Fechar o navegador

*** Test Cases ***
Verificar mensagens de erro ao clicar em botão sem preencher dados de formulário
    Dado que eu clique no botão criar card
    Então sistema apresenta mensagem de campo obrigatório