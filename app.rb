require('sinatra')
  require('sinatra/reloader')
  require('./lib/scrabble')
  also_reload('lib/**/*.rb')

get('/')do
  erb(:index)
end

get('/scrab') do
   @scrab = params.fetch('scrab').scrabble()
   erb(:scrab)
 end
