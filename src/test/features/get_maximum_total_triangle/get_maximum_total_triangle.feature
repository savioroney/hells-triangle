
Feature: Get maximum total to triangle

  Scenario: To get value Maximum Total
    Given a triangle with values:
      | 6       |
      | 3,5     |
      | 9,7,1   |
      | 4,6,8,4 |
    When to obtain total maximum value
    Then should return the value: 26