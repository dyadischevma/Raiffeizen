@all
Feature: Get historical foreign exchange rates errors

#Проверки некорректных граничных значений

@correct
Scenario: Get wrong date
      Given error historical foreign rates for 1999-13-31
      Then I have error
      |302|invalid_date|You have entered an invalid date. [Required format: date=YYYY-MM-DD]|

@correct
Scenario: Get wrong date
      Given error historical foreign rates for 1999:12:31
      Then I have error
      |302|invalid_date|You have entered an invalid date. [Required format: date=YYYY-MM-DD]|

@correct
Scenario: Get wrong date
      Given error historical foreign rates for tomorrow
      Then I have error
      |302|invalid_date|You have entered an invalid date. [Required format: date=YYYY-MM-DD]|

@correct
Scenario: Get error rates for date
      Given error historical foreign rates for 1998-12-31
      Then I have error
      |106|no_rates_available|Your query did not return any results. Please try again.|