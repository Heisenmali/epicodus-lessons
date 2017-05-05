require 'integration_helper_spec'


describe("the root path", {:type => :feature}) do
  it 'verifies the hompepage displays a list of projects and a list of volunteers' do
    visit '/'
    expect(page).to have_content 'Layla'
    expect(page).to have_content 'Eric Clapton'
  end
end

#PROJECT PATH –––––––––––––––––––––––––––––––––––––

describe("the add_project path", {:type => :feature}) do
  it 'allows user to add a project' do
    visit '/'
    fill_in 'project', :with => 'Bohemian Rhapsody'
    click_button 'Add project'
    expect(page).to have_content 'Bohemian Rhapsody'
  end
end

describe("the view project path", {:type => :feature}) do
  it 'allows user to view a project' do
    visit '/'
    fill_in 'project', :with => 'Bohemian Rhapsody'
    click_button 'Add project'
    click_link 'Bohemian Rhapsody'
    expect(page).to have_content 'Bohemian Rhapsody'
  end
end

#VOLUNTEER PATH –––––––––––––––––––––––––––––––––––

describe("the add volunteer path", {:type => :feature}) do
  it 'allows user to add a volunteer' do
    visit '/'
    fill_in 'volunteer', :with => 'Queen'
    click_button 'Add volunteer'
    expect(page).to have_content 'Queen'
  end
end

# describe("the view volunteer path", {:type => :feature}) do
#   it 'allows user to view a volunteer' do
#     visit '/'
#     fill_in 'volunteer', :with => 'Queen'
#     click_button 'Add volunteer'
#     click_link 'Queen'
#     expect(page).to have_content 'Queen'
#   end
# end