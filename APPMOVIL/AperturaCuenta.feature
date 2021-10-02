Feature:  Apertura de cuenta de ahorros ExtraCash
  #Scenario (+)Positivo
  Scenario: Solicitud de Apertura de cuenta de ahorros del tipo cuenta simple en moneda en soles
    Given: dado el cliente selecciona productos
    When: el cliente selecciona abre tu cuenta aqui
    And: se habilita la nueva ventana te ofrecemos tipos de cuenta
    Then: el cliente selecciona el tipo de producto cuenta simple
    And: el cliente selecciona la opcion me interesa
    And: el cliente acepta los terminos y condiciones
    #Scenario (-) Negativo
  Scenario: Solicitud de Apertura de cuenta de ahorros del tipo cuenta simple en moneda en soles
    Given: dado el cliente selecciona productos
    When: el cliente selecciona abre tu cuenta aqui
    And: se habilita la nueva ventana te ofrecemos tipos de cuenta
    Then: el cliente selecciona el tipo de producto cuenta simple
    And: el cliente selecciona la opcion me interesa
    But: el cliente no puede continuar la operacion mostrando el mensaje ocurrio un problema de conexión de internet
