require('sinatra')
require('sinatra/reloader')
require('./lib/replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  find = params.fetch('find')
  replace = params.fetch('replace')
  @string = params.fetch('string').replace(find, replace)
  erb(:results)
end
