require "capybara/rspec"
require "./app"
require 'securerandom'


Capybara.app = Sinatra::Application
set(:show_exceptions, false)
#
module DBI #load data into database
    train_uuid = SecureRandom.uuid
    name = "The Burf Express"
    Train.save(name, train_uuid)
    city_uuid = SecureRandom.uuid
    name = "Portland"
    City.save(name, city_uuid)
end

RSpec.configure do |config|
  config.before(:each) do
    extend DBI
  end
end

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM trains *;")
    DB.exec("DELETE FROM cities *;")
  end
end
