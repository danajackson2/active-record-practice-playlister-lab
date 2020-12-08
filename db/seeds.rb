require_relative '../config/environment.rb'

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

20.times do
Artist.create(name:Faker::Name.name)
end

20.times do
Genre.create(name:Faker::Music.genre)
end

20.times do
Song.create(name:Faker::Music::PearlJam.song, artist_id:Artist.all.sample.id, genre_id:Genre.all.sample.id)
end

puts "done"

#updated github username