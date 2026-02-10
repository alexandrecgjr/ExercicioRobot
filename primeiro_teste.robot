*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Abrir navegador e acessar o site da Organo
    Open Browser    url=http://localhost:3000/    browser=Chrome
    