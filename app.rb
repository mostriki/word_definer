require ('sinatra')
require ('pry')
require ('sinatra/reloader')
also_reload('.lib/**/*.rb')
require ('./lib/definer')

get('/') do
  @class_ins = Word.all()
  erb(:input)
end

post('/') do
  @word = params['wordInput']

  class_info = Word.new({:word_input => @word, :definition_input => @definition})
  class_info.save
  @class_ins = Word.all()
  erb(:input)
end

get('/definition/:id') do
  @input_id = Word.find(params[:id])
  @class_ins = Word.all()
  erb(:definition_page)
end

post('/definition/:id') do
  @input_id = Word.find(params[:id])
  @input_id.add_definition(params['definitionInput'])
  erb(:definition_page)
end
