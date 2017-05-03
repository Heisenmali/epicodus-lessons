require "capybara/rspec"
require "./app"
require 'securerandom'


Capybara.app = Sinatra::Application
set(:show_exceptions, false)
#
module DBI
  def self.load_data #load data into database
    train_name = "The Burf Express"
    Train.save(train_name)
    city_name = "Portland"
    City.save(city_name)
  end
end

RSpec.configure do |config|
  config.before(:each) do
    extend DBI
    DBI.load_data
  end
end

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM trains *;")
    DB.exec("DELETE FROM cities *;")
  end
end
