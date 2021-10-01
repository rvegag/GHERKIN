#Autor: Edison Virto.. 
@MPV-AppMovil @Android @Iphone
Feature: Login
  Como Cliente,
  Quiero ingresar al AppMovil con credenciales de Usuario & Password
  Para así poder utilizar el AppMovil

  Rule: El Cliente debe ser Mayor de edad ó igual a 18 Años
  # Uso de Background
  Background:
  Given Yo estoy en la página Login del AppMovil
  # El primer Scenario (+) Positivo
  @SRT-2021-OptimizacionAppMovil
  Scenario: Cuando realizo el Login con credenciales de Usuario & Password Validos
    #Given Yo estoy en la página Login del AppMovil
    When Yo registro la cuenta de email textbox con el valor "evirto@canvia.com"
    And Yo registro el Password textBox con Valor "123456"
    And Yo doy Click en el boton Login
    Then Yo deberia estar en la página principal de nombre Home Page del AppMovil
    And El Titulo de la página de Home Page es "Bienvenida"
    But El boton Login no deberia estar presente en la página Home Page del AppMovil
      """
      nombre: Edison
      MontoDisponibleCuenta: 1000
      LineDisponible: 1000
      """

  # El Segundo Scenario (-)Negativo
  Scenario: Cuando realizo el Login con credenciales no Validos
    #Given Yo estoy en la página Login del AppMovil
    When Yo registro la cuenta email textbox con el Valor "Email.No.Valido@canvia.com"
    And Yo registro el Password textBox con el Valor "Clave.Errada"
    And Yo doy Click en el boton Login
    Then Yo no puedo acceder a la página Home Page
    And El Mensaje deberia mostrar: Usuario y Password no Validos
  # Scenario Outline
  Scenario Outline: Cuando realizo el Login con credenciales de Usuario & Password Validos
    When Yo registro la cuenta de email con el valor <email>
    And Yo registro el Password con Valor <password>
    And Yo doy Click en el boton Login
    Then Yo deberia estar en la página principal de nombre Home Page del AppMovil
    And El Titulo de la página de Home Page es "Bienvenida"
    But El boton Login no deberia estar presente en la página Home Page del AppMovil
    Examples:
    |email              |password |
    |evirto@canvia.com  |123456   |
