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

post '/project' do
  project_name = params.fetch('project')
  Project.save(project_name)
  redirect '/' 
end

get '/project/:id' do
  project_id = params.fetch('id')
  @project_info = Project.find(project_id)[0]
  erb(:project)
end

patch '/project/:id' do
  project_id = params.fetch('id')
  new_name = params.fetch('new-name')
  Project.edit(new_name, project_id)
  redirect "/project/#{project_id}"
end

#VOLUNTEER PATH –––––––––––––––––––––––––––––––––––

post '/volunteer' do
  volunteer_name = params.fetch('volunteer')
  Volunteer.save(volunteer_name)
  redirect '/' 
end

get '/volunteer/:id' do
  volunteer_id = params.fetch('id')
  @volunteer_info = Volunteer.find(volunteer_id)[0]
  erb(:volunteer)
end

patch '/volunteer/:id' do
  volunteer_id = params.fetch('id')
  new_name = params.fetch('new-name')
  Volunteer.edit(new_name, volunteer_id)
  redirect "/volunteer/#{volunteer_id}"
end
