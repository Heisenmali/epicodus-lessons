require 'integration_helper_spec'


describe("the root path", {:type => :feature}) do
  it 'verifies the hompepage displays a list of projects and a list of volunteers' do
    visit '/'
    expect(page).to have_content 'Layla'
    expect(page).to have_content 'Eric Clapton'
  end
end
