*** Settings ***
Library          SeleniumLibrary
Resource         setup_teardown.robot
Test Setup       Dado que eu acesse o Organa
Test Teardown    Fechar o navegador

*** Variables ***
${BOTAO_CARD}             id:form-botao


*** Test Cases ***
Verificar mensagens de erro ao clicar em botão sem preencher dados de formulário
    Dado que eu clique no botão criar card
    Então sistema apresenta mensagem de campo obrigatório


*** Keywords ***
Dado que eu clique no botão criar card
    Click Element     ${BOTAO_CARD} 

Então sistema apresenta mensagem de campo obrigatório
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro
        
