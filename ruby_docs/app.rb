require 'sinatra'
require 'sinatra/reloader'
require './lib/doctor'
require 'pry'
require 'pg'
also_reload('lib/**/*.rb')

extend DBE
extend Doctor
extend Patient
extend Speciality

DB = PG.connect({:dbname => 'doctor'})

get('/') do
  @doctors = Doctor.all_docs
  erb(:index)
end

post '/new_doc' do
  spec_id = Speciality.save({:name => params.fetch("speciality")})
  Doctor.save(params.fetch("name"), spec_id)
  @doctors = Doctor.all_docs
  erb :index
end

get '/docs/:id' do
  binding.pry
  @id = params.fetch("id")
  @doc_name = Doctor.name(@id)
  @doctors = Doctor.all_docs
  @patients = Doctor.all_patients(params.fetch("id"))
  erb :index
end

post '/new_patient' do
  binding.pry
  Patient.save(params)
  erb :index
end
