require 'sinatra'
require 'sinatra/reloader'
require './lib/project'
require './lib/volunteer'
require 'pry'
require 'pg'

also_reload('lib/**/*.rb')

extend Project
extend Volunteer

DB = PG.connect({:dbname => "volunteer_tracker_test"})

get '/' do
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:index)
end

post '/add_project' do
  project_name = params.fetch('project')
  Project.save(project_name)
  redirect '/' 
end
