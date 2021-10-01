#Autor: Edison Virto 
#Idioma: Español
@MVP-AppMovil @Android @Iphone
Feature: Tranferir Dinero
  Como Cliente del Banco IBK
  Quiero Tranferir Dinero entre mis cuentas
  Para Financiar mi tarjeta de credito
  # Uso de Background
  Background:
    Given El Cliente esta en la página Tranferir
  # Primer Scenario (+)Positivo
  @SRT-2021-OptimizacionAppMovil
  Scenario: Cuando el Cliente tiene disponible Dinero
    And El Cliente tiene cuenta Bancaria con tipo de moneda en Soles
    And El Cliente tiene Dinero disponible en cuenta Bancaria
    When El Cliente solicita Tranferir Dinero entre sus cuentas
    Then El Dinero es Tranferido a la segunda cuenta Bancaria
  # Segundo Scenario (-)Negativo
  Scenario: Cuando el Cliente no tiene Dinero disponible
    And El Cliente tiene cuenta Bancaria con tipo de moneda en Soles
    And El Cliente no tiene Monto disponible en cuenta Bancaria
    When El Cliente solicita Tranferir Dinero entre sus cuentas
    Then El Cliente no puede Tranferir a la segunda cuenta Bancaria
    And El Mensaje deberia mostrar: No cuenta con monto disponible para realizar dicha operación
# Scenario Outline
  Scenario Outline: Tranferir Dinero
    Given La cuenta Bancaria tiene <dineroDisponiblePrimeraCuenta>
    And El Cliente tiene cuenta Bancaria con tipo <moneda>
    When El Cliente solicita Tranferir dinero <dineroTranferido>
    Then El Dinero es Tranferido a la segunda cuenta Bancaria <mensaje>
    Examples:
    |dineroDisponiblePrimeraCuenta  |moneda |dineroTranferido |mensaje                          |
    |1000.00                        |Soles  |100.00           |Tranferencia Realizada con exito |
