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

#PROJECT PATH –––––––––––––––––––––––––––––––––––––

post '/add_project' do
  project_name = params.fetch('project')
  Project.save(project_name)
  redirect '/' 
end

#VOLUNTEER PATH –––––––––––––––––––––––––––––––––––

post '/add_volunteer' do
  volunteer_name = params.fetch('volunteer')
  Volunteer.save(volunteer_name)
  redirect '/' 
end
