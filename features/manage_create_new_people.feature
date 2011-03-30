Feature: Manage create_new_project

  @javascript
  Scenario: Register new Project
    Given I am authenticated
    And I go to the new create_new_project page
    And I sleep for 5 seconds
    And I fill in "title" with "New Project"
    And I fill in "Deadline" with "Thu, 31 Mar 2011 15:24:59 +0545"
    And I fill in "Description" with "Description for New Project"
    And I press "Create Project"
    Then I should see "Project Successfully Created"


