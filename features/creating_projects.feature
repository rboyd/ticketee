# http://agile-itspeople.blogspot.com/2011/10/when-cucumber-is-mightier-than-pen.html

Feature: Creating projects
  In order to have projects to assign tickets to
  As a user
  I want to create them easily

Background:
  Given I am on the homepage
  When I navigate to the new project creation page

Scenario: Creating a project
  And I create a new project
  Then I should be shown the project created verification messsage
  And I should be on the project page of the new project
  And I should see the project name in the title

Scenario: Creating a project without a name
  And I try to create a project without a name
  Then I should be shown an error message
  And I should see the reason
