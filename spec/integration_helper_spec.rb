require "capybara/rspec"
require 'SecureRandom'
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

module DBI
  def self.load_data #preload data into database
    project_name = "Layla"
    project_id = Project.save(project_name)
    volunteer_name = "Eric Clapton"
    volunteer_id = Volunteer.save(volunteer_name)
    Volunteer.add_project(volunteer_id, project_id)
  end
end

RSpec.configure do |config|
  config.before(:each) do
    DB.exec("DELETE FROM projects *;")
    DB.exec("DELETE FROM volunteers *;")
    # extend DBI
    # DBI.load_data
  end
end

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM projects *;")
    DB.exec("DELETE FROM volunteers *;")
  end
end