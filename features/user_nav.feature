Feature: User navigate between pages

  As a user
  I can navigate between differnt pages

  Background: toolkits have been add to database

    Given the following toolkits exist

      | title            | author | category | overview    |
      | Law Workshop     | me     | Law      | Lorem Ipsum |
      | Chinese Workshop | me     | Social   | Lorem Ipsum |

    And I am on the home page

  Scenario: Go to category page from index page
    Given I am on the home page
    When I follow "GET STARTED"
    Then I should be on the category page

  Scenario: Go to Law page from category page
    Given I am on the category page
    When I follow "Law"
    Then I should be on the Law page

  Scenario: Go to Law Workshop page
    Given I am on the Law page
    When I follow "View More"
    Then I should be on the Law Workshop page

  Scenario: Go to create new toolkit page
    Given I am on the Law page
    When I follow "Add a new toolkit"
    Then I should be on the new toolkit page