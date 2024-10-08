*** Settings ***
Resource    ${EXECDIR}/Core/Main.robot
Library     AppiumLibrary

*** Keywords ***
Abrir Aplicativo

    Open Application    http://127.0.0.1:4723
    ...     platformName=iOS
    ...     deviceName=iPhone 12
    ...     automationName=XCUITest
    ...     autoGrantPermissions=${True}
    ...     autoAcceptAlerts=${True}

Fechar Aplicativo
    AppiumLibrary.Close All Applications