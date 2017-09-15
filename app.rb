require ('sinatra')
require ('pry')
require ('sinatra/reloader')
also_reload('.lib/**/*.rb')
require ('./lib/definer')

get('/') do

  erb(:input)
end

post('/') do

  erb(:input)
end

get('/definitions/')

  erb(:definition_page)
end
