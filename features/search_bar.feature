Feature: Search Bar

  As a User
  I can search for toolkits with the search bar

  Background: toolkits have been add to database

    Given the following toolkits exist

      | title            | author | category | overview    |
      | Law Workshop     | me     | Law      | Lorem Ipsum |
      | Law Workshop 2   | me     | Law      | Lorem Ipsum |
      | Chinese Workshop | me     | Social   | Lorem Ipsum |

    And I am on the home page

  Scenario: Enter home page
    Given I am on the home page
    When I fill in "search_query" with "workshop"
    Then I press "Search"
    Then I should be on the search results page
    And I should see "Law Workshop"
    And I should see "Law Workshop 2"
    And I should see "Chinese Workshop"