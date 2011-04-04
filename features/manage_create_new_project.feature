Feature: Manage create_new_project

  @javascript
  Scenario: Register new Project
    Given I am authenticated
    And I go to the new create_new_project page
    And I fill in "Title" with "New Project"
    And I select "Year" as "2012"
    And I fill in "Description" with "Description for New Project"
    And I press "Create Project"
    Then I should see "Project Successfully Created"

