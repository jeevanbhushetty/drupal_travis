@homepage
Feature: Test the homepage

  @javascript
  Scenario: Test the homepage
    Given I am on the homepage
    Then I should see "Welcome"