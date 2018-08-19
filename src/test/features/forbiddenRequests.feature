@all
Feature: Send forbidden request

#Сюда вынес тесты, которые относятся к авторизации и невозможности пользоваться платным функционалом
#Вообще, здесь можно еще больше комбинаций проверить, но для базовых тестов достаточно

@correct
Scenario: Send forbidden parameter base=RUB for latest rates
      When i want send request with base = RUB
      Then i have error for request latest ratest with base
      |105|base_currency_access_restricted||

@correct
Scenario: Send forbidden parameter base=RUB for first available date
      When i want send request with base = RUB
      And i want send request with date 1999-01-01
      Then i have error for request historical ratest with base
      |105|base_currency_access_restricted||

@correct
Scenario: Send request without authorization key
      Then i have without key response
      |101|missing_access_key|You have not supplied an API Access Key. [Required format: access_key=YOUR_ACCESS_KEY]|