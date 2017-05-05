require 'integration_helper_spec'


describe("the root path", {:type => :feature}) do
  it 'verifies the hompepage displays a list of projects and a list of volunteers' do
    visit '/'
    expect(page).to have_content 'Layla'
    expect(page).to have_content 'Eric Clapton'
  end
end

describe("the add_project path", {:type => :feature}) do
  it 'allows user to add a project' do
    visit '/'
    fill_in 'project', :with => 'Bohemian Rhapsody'
    click_button 'Add project'
    expect(page).to have_content 'Bohemian Rhapsody'
  end
end
