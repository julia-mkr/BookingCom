Feature: Search on booking.com

  Scenario: Search by city criteria
    Given User is looking for hotels in 'Minsk' city
    When User does search
    Then Hotel 'Hampton by Hilton Minsk City Centre' should be on the first page

  Scenario Outline: Check hotel rating
     Given User is looking for hotels in '<City>' city
     When User does search
     Then '<Hotel>' rating should be '<Rating>'
     Examples:
       | City   | Hotel                                | Rating |
       | Minsk  | Hampton by Hilton Minsk City Centre  | 8.9    |
       | Brest  | Hampton by Hilton Brest              | 9.3    |
       | Gomel  | Chisto Hotel                         | 9.1    |

  Scenario Outline: Search by different city criteria
    Given User is looking for hotels in '<City>' city
    When User does search
    Then Hotel '<Hotel>' should be on the first page
    Examples:
      | City   | Hotel                               |
      | Minsk  | Hampton by Hilton Minsk City Centre |
      | Brest  | Hampton by Hilton Brest             |
      | Gomel  | Chisto Hotel                        |
