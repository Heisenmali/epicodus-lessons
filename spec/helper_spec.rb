require 'pry'
require 'rspec'
require 'pg'
require 'city'
require 'train'
require 'securerandom'

DB = PG.connect({:dbname => 'train_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM trains *;")
    DB.exec("DELETE FROM cities *;")
  end
end
