Feature: Testing FTB REST API AIRCRAFTS resource
  Clients should be able to READ/CREATE/UPDATE/DELETE an aircraft record.

  Scenario: Get specific aircraft data by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=12
    Then aircraft data to be manufacturer='Su' and model='Su-24' and number of seats=494

  Scenario: Create an aircraft
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='Test' and model='Test' and number of seats=10
    Then returned aircraft data to be manufacturer='Test' and model='Test' and number of seats=10


 #HW 27.4 Muntian Ksenia
      Scenario: HW 27.4_1
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=1144
    Then aircraft data to be manufacturer='HW 27.4' and model='HW 27.4_1' and number of seats=15

  Scenario: HW 27.4_2
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='HW 27.4' and model='HW 27.4_2' and number of steps=null
    Then returned aircraft data to be manufacturer='HW 27.4' and model='HW 27.4_2' and number of seats=15
