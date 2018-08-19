@all
Feature: Get historical foreign exchange rates

#Проверяем курсы за дату. Во-первых курсы рубля за 1999 год отсутсвуют, точную границу не искал, но на мой взгляд это баг, тесты упадут.
#Во-вторых, тесты на даты вчера и сегодня должны получать данные динамически, хардкод тут неуместен,
#но взять динамически мне их неоткуда. Запрашивать с этого же API для эмуляции тестов я не стал, так же как и делать такие проверки,
#как, например, просто проверить что непустое. Тесты будут падать.

@correct
Scenario: Get rates EUR RUB
      Given historical foreign rates for 1999-01-01
      |EUR|1|
      |RUB|76.713705|
      Then i have historical rates response

@correct
Scenario: Get rates RUB EUR
      Given historical foreign rates for 1999-01-01
      |RUB|76.713705|
      |EUR|1|
      Then i have historical rates response

@correct
Scenario: Get rates EUR
      Given historical foreign rates for 1999-01-01
      |EUR|1|
      Then i have historical rates response

@correct
Scenario: Get rates RUB
      Given historical foreign rates for 1999-01-01
      |RUB|76.713705|
      Then i have historical rates response

@correct
Scenario: Get rates EUR RUB yesterday
      Given historical foreign rates for yesterday
      |EUR|1|
      |RUB|76.713705|
      Then i have historical rates response

@correct
Scenario: Get rates RUB EUR yesterday
      Given historical foreign rates for yesterday
      |RUB|76.713705|
      |EUR|1|
      Then i have historical rates response

@correct
Scenario: Get rates EUR
      Given historical foreign rates for yesterday
      |EUR|1|
      Then i have historical rates response

@correct
Scenario: Get rates RUB
      Given historical foreign rates for yesterday
      |RUB|76.713705|
      Then i have historical rates response

Scenario: Get rates EUR RUB yesterday
      Given historical foreign rates for today
      |EUR|1|
      |RUB|76.713705|
      Then i have historical rates response

@correct
Scenario: Get rates RUB EUR yesterday
      Given historical foreign rates for today
      |RUB|76.713705|
      |EUR|1|
      Then i have historical rates response

@correct
Scenario: Get rates EUR
      Given historical foreign rates for today
      |EUR|1|
      Then i have historical rates response

@correct
Scenario: Get rates RUB
      Given historical foreign rates for today
      |RUB|76.713705|
      Then i have historical rates response
