Feature: User can edit toolkit
  As a user
  I can edit an existing toolkit

  Background: User is logged in and toolkit is loaded in db
    Given the user is loggedin
    Given the following toolkits exist
      | title            | author | overview    |
      | Law Workshop     | me     | Lorem Ipsum |
      | Law Workshop 2   | me     | Lorem Ipsum |
      | Chinese Workshop | me     | Lorem Ipsum |

    Scenario: Go to edit page from toolkit page
      Given I am on the Law Workshop Page
      When I follow "EDIT"
      Then I should be on the Law Workshop edit page

