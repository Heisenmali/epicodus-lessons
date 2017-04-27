require 'sinatra'
require 'sinatra/reloader'
require './lib/contacts'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  @output = Contact.all
  erb(:index)
end

get('/contacts/addform') do
  erb(:form)
end

post('/contacts/addnew') do

  first_name = params.fetch("first_name")
  last_name = params.fetch("last_name")
  street = params.fetch("street")
  city = params.fetch("city")
  state = params.fetch("state")
  zip = params.fetch("zip")
  email = params.fetch("email")
  cell = params.fetch("cell")

  info_hash = {:first_name => first_name, :last_name => last_name, :street => street, :city => city, :state => state, :zip => zip, :email => email, :cell => cell}
  new_contact = Contact.new(info_hash)
  new_contact.save
  erb(:success)
end

get('/contacts/:name') do
  @contact = Contact.find(params.fetch('name'))
  erb(:contact_page)
end
