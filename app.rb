require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/cd')

get('/') do
  erb(:index)
end

get('/artist_form') do
  erb(:artist_form)
end

get('/cd_form') do
  @artists = Artist.all()
  erb(:cd_form)
end

get('/library') do
  @artists = Artist.all()
  erb(:library)
end

post('/new_artist') do
  name = params.fetch('artist')
  Artist.new(name).save()
  @artists = Artist.all()
  erb(:library)
end

post('/new_cd') do
  title = params.fetch('title')
  artist = params.fetch('artist')
  Compact_disk.new(title, artist).save()
  @artists = Artist.all()
  erb(:library)
end

get('/artists/:id') do
  @artist = Artist.find(params.fetch('id').to_i()).name()
  @albums = Compact_disk.group(@artist)
  erb(:artist)
end
