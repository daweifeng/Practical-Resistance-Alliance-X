Feature: User login

  As a User
  I can login

  Background: User has been added to db

    Given the user is created

    And I am on the home page

  Scenario: Enter login page from home page
    Given I am on the home page
    When I follow "Log In"
    Then I should be on the login page

  Scenario: Login user success
    Given I am on the login page
    When I fill in "email" with "joe@gmail.com"
    And I fill in "password" with "123"
    And I press "Login"
    Then I should be on the category page

  Scenario: Login user fail
    Given I am on the login page
    When I fill in "email" with "joe@gmail.com"
    And I fill in "password" with "1234"
    And I press "Login"
    Then I should be on the login page

  Scenario: Cannot access login page after login
    Given I am on the login page
    When I fill in "email" with "joe@gmail.com"
    And I fill in "password" with "123"
    And I press "Login"
    Then I should be on the category page
    When I go to the login page
    Then I should be on the home page


