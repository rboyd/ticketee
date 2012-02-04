# http://agile-itspeople.blogspot.com/2011/10/when-cucumber-is-mightier-than-pen.html

Given /^I am on the homepage$/ do
  visit '/'
end

When /^I navigate to the new project creation page$/ do
  click_link 'New Project'
end

When /^I create a new project$/ do
    fill_in('Name', with: 'TextMate 2')
    click_button 'Create Project'
end

Then /^I should be shown the project created verification messsage$/ do
  page.should have_content('Project has been created.')
end

Then /^I should be on the project page of the new project$/ do
  current_path.should == project_path(Project.find_by_name!('TextMate 2'))
end

Then /^I should see the project name in the title$/ do
  within('head title') do
    page.should have_content('TextMate 2 - Projects - Ticketee')
  end
end
