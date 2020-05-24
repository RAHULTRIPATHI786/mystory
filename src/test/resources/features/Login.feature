@Login @Regression @smoke
Feature: validate user access

  Background: 
    Given I launch the application

  Scenario: Login with invalid user
    When I enter username "validuser" on login page
    And I enter password "password" on login page
    And I click on Submit button on login page
    Then I should land on authenticated home page

  Scenario: Login with invalid user
    When I enter username "invaliduser" on login page
    And I enter password "password" on login page
    And I click on Submit button on login page
    Then I should not land on authenticated home page
