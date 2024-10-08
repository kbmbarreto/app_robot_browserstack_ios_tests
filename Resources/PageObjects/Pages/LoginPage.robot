*** Settings ***
Resource    ${EXECDIR}/Core/Main.robot
Library  AppiumLibrary

*** Keywords ***

que esteja na tela inicial do app
    AppiumLibrary.Wait Until Page Contains Element      ${login.btnComecar}                 60
   
clico no botão “Começar”
    AppiumLibrary.Click Element                         ${login.btnComecar}
   
devo ser direcionado para a tela de login
   Sleep    5s
   AppiumLibrary.Wait Until Page Contains Element       ${login.txtBemVindo}

informo um cpf inválido
    AppiumLibrary.Input Text                           ${login.inpCpf}                     ${CPF_INVALIDO}

não deve passar para tela de digitar senha
       AppiumLibrary.Wait Until Page Does Not Contain Element       ${login.txtDigiteSenha}
