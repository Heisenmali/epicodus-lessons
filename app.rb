require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './lib/employee'
require './lib/division'
require 'pry'


also_reload('lib/**/*.rb')

get('/') do
  Division.create({:name => "HR"})
  Employee.create({:name => "Ben"})
  @divisions = Division.all
  @employees = Employee.all
  erb(:index)
end
