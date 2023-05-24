*** Settings ***
Documentation       Template keyword resource.

Variables           variables.py

Library             RPA.Windows
Library             RPA.Windows
Library             RPA.FTP
Library             OperatingSystem
Library             RPA.Desktop
Library             RPA.PDF

*** Keywords ***
Consultar seguros del cliente
    [Arguments]    ${nroDocumento}
    Abrir menu asegurados de vida
    Ingresar asegurado    ${nroDocumento}
    Imprimir detalle de seguros

Abrir menu asegurados de vida
    Send Keys    desktop    keys={Ctrl}{M}
    Send Keys    desktop    ASEGURADOS VIDA    
    Send Keys    desktop    {Tab}
    Send Keys    desktop    {Enter}

Ingresar asegurado    
    [Arguments]    ${nroDocumento}
    Send Keys    desktop    3
    Send Keys    desktop    ${nroDocumento}
    Send Keys    desktop    {Enter}
    Send Keys    desktop    {Enter}
    
Imprimir detalle de seguros
    Send Keys    desktop    {Tab}
    Send Keys    desktop    {Tab}
    Send Keys    desktop    {Enter}
    Send Keys    desktop    {Right}
    Send Keys    desktop    {Right}
    Send Keys    desktop    {Tab}
    Send Keys    desktop    {Tab}
    Send Keys    desktop    {Tab}
    Send Keys    desktop    {Tab}
    Send Keys    desktop    {Down}
    Send Keys    desktop    {Down}
    Send Keys    desktop    {Down}
    Send Keys    desktop    {Down}
    RPA.Windows.Click    name:Imprimir
    Send Keys    desktop    ${rutaArchivoDatosAsegurado}
    Send Keys    desktop    {Enter}
    