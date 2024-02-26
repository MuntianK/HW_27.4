Feature: Testing FTB REST API AIRCRAFTS resource
  Clients should be able to READ/CREATE/UPDATE/DELETE an aircraft record.

  Scenario: Get specific aircraft data by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=12
    Then aircraft data to be manufacturer='Su' and model='Su-24' and number of seats=494

  Scenario: Create an aircraft
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='TestManuf' and model='TestModel' and number of seats=10
    Then returned aircraft data to be manufacturer='TestManuf' and model='TestModel' and number of seats=10


 #HW 27.4 Muntian Ksenia
  Scenario Outline: Get specific aircraft data by its ID and check that number of seats is not null
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=<id>
    Then aircraft data to be manufacturer=<manufacturer> and model=<model> and number of seats is not null
    Examples:
      | id   | manufacturer | model       |
      | 1144 | 'HW 27.4'    | 'HW 27.4_1' |
      | 59   | 'Ilushin'    | 'Il-96'     |

  Scenario: Create an aircraft with number of seats = null and check its data
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='HW 27.4' and model='HW 27.4_2' and number of seats=null
  #  Then returned aircraft data to be manufacturer='HW 27.4' and model='HW 27.4_2' and number of seats=15
    Then aircraft data to be manufacturer='HW 27.4' and model='HW 27.4_2' and number of seats is null