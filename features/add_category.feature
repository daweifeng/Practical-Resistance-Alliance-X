Feature: Add Category

   As a User
   I can add category

   Background: User is logged in
      Given the user is loggedin

   Scenario: Enter add category page
      Given I am on the new category page
<<<<<<< HEAD
      When I fill in "new_category" with "Education"
      Then I press "Submit"
      Then I should be on the new category page
=======
      When I fill in "name" with "Education"
      Then I should be on the category page
      And I should see "Education"
>>>>>>> added tests for add_category and search_bar
