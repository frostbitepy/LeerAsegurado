*** Settings ***
Documentation       Template robot main suite.

Variables           variables.py
Resource            keywords.robot

Library             Collections
Library             MyLibrary



*** Tasks ***
Leer polizas vigentes
    Consultar seguros del cliente    ${nroDocumento}


