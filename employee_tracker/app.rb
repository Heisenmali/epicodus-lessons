require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './lib/employee'
require './lib/division'
require 'pry'


also_reload('lib/**/*.rb')

get '/' do
  @divisions = Division.all
  @employees = Employee.all
  erb(:index)
end

#EMPLOYEES PATH

get '/employee/:id' do
  id = params.fetch('id')
  @employee = Employee.find_by(id: id)
  erb(:employee)
end

post '/employee' do
  name = params.fetch("name")
  test_division = Division.create(name: "Grady")
  test_division.employees.create({:name => name})
  binding.pry
  redirect '/'
end

patch '/employee/edit/:id' do
  id = params.fetch('id')
  new_name = params.fetch('new-name')
  employee = Employee.find_by(id: id)
  employee.name = new_name
  redirect "/employee/#{id}"
end

#DIVISIONS PATH

get '/division/:id' do
  id = params.fetch('id')
  @division = Division.find_by(id: id)
  erb(:division)
end

post '/division' do
  name = params.fetch("name")
  Division.create({:name => name})
  redirect '/'
end

patch '/division/edit/:id' do
  id = params.fetch('id')
  new_name = params.fetch('new-name')
  division = Division.find_by(id: id)
  division.name = new_name
  division.save
  binding.pry
  redirect "/division/#{id}"
end
