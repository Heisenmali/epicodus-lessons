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

  it 'allows user to view the list of volunteers for a single project' do
    visit '/'
    fill_in 'volunteer', :with => 'Queen'
    click_button 'Add volunteer'
    fill_in 'project', :with => 'Bohemian Rhapsody'
    click_button 'Add project'
    click_link 'Queen'
    select('Bohemian Rhapsody', :from => 'project')
    click_button 'Add project'
    visit '/'
    click_link 'Bohemian Rhapsody'
    expect(page).to have_content 'Queen'
  end
end

describe("the edit project path", {:type => :feature}) do
  it 'allows user to edit the name of a project' do
    visit '/'
    fill_in 'project', :with => 'Bohemian Rhapsody'
    click_button 'Add project'
    click_link 'Bohemian Rhapsody'
    fill_in 'new-name', :with => 'Bicycle'
    click_button 'Save changes'
    expect(page).to have_content 'Bicycle'
  end
end

describe("the delete project path", {:type => :feature}) do
  it 'allows user to delete the name of a project' do
    visit '/'
    fill_in 'project', :with => 'Bohemian Rhapsody'
    click_button 'Add project'
    click_link 'Bohemian Rhapsody'
    click_button 'Delete project'
    expect(page).to have_no_content 'Bohemian Rhapsody'
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

describe("the view volunteer path", {:type => :feature}) do
  it 'allows user to view a volunteer' do
    visit '/'
    fill_in 'volunteer', :with => 'Queen'
    click_button 'Add volunteer'
    click_link 'Queen'
    expect(page).to have_content 'Queen'
  end
end

describe("the edit volunteer path", {:type => :feature}) do
  it 'allows user to edit the name of a volunteer' do
    visit '/'
    fill_in 'volunteer', :with => 'Queen'
    click_button 'Add volunteer'
    click_link 'Queen'
    fill_in 'new-name', :with => 'Pink Floyd'
    click_button 'Save changes'
    expect(page).to have_content 'Pink Floyd'
  end

  it 'allows user to add the name of a project to a user' do
    visit '/'
    fill_in 'volunteer', :with => 'Queen'
    click_button 'Add volunteer'
    fill_in 'project', :with => 'Bohemian Rhapsody'
    click_button 'Add project'
    click_link 'Queen'
    select('Bohemian Rhapsody', :from => 'project')
    click_button 'Add project'
    expect(page).to have_content 'Bohemian Rhapsody'
  end
end

describe("the delete volunteer path", {:type => :feature}) do
  it 'allows user to delete the name of a volunteer' do
    visit '/'
    fill_in 'volunteer', :with => 'Queen'
    click_button 'Add volunteer'
    click_link 'Queen'
    click_button 'Delete volunteer'
    expect(page).to have_no_content 'Queen'
  end
end