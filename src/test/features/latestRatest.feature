@all
Feature: Get now latest foreign exchange rates

@correct
Scenario: Get latest rates EUR RUB
      Given foreign rates
      |EUR|1|
      |RUB|76.713705|
      Then i have response

@correct
Scenario: Get latest rates RUB EUR
    Given foreign rates
    |RUB|76.713705|
    |EUR|1|
    Then i have response

@correct
Scenario: Get latest rates RUB
    Given foreign rates
    |RUB|76.713705|
    Then i have response

@correct
Scenario: Get latest rates EUR
    Given foreign rates
    |EUR|1|
    Then i have response

@correct
Scenario: Get latest rates EUR RUB
      Given foreign rates
      |EUR|1|
      |RUB|76.713705|
      Then i have response with base = EUR

@correct
Scenario: Get latest rates RUB EUR
    Given foreign rates
    |RUB|76.713705|
    |EUR|1|
    Then i have response with base = EUR

@correct
Scenario: Get latest rates RUB
    Given foreign rates
    |RUB|76.713705|
    Then i have response with base = EUR

@correct
Scenario: Get latest rates EUR
    Given foreign rates
    |EUR|1|
    Then i have response with base = EUR