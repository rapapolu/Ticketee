require 'spec_helper'
    feature 'User can create new project',:type => :feature do
    scenario 'with valid attributes ' do
    visit '/'
    
    
    click_link "New Project"
    
    fill_in "Name", with: "Subline text 3"
    fill_in "Description", with: "A text editor for everyone"
    click_button "Create Project"
    
    #page.should have_content('Project has been created')
    page.should have_content "Project has been created"
    #expect(page).to have_content('Project has been created')
    end
end