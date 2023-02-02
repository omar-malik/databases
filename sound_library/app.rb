require_relative 'lib/database_connection'
require_relative 'lib/album_repository'

DatabaseConnection.connect('sound_library')

sql = 'SELECT id, title FROM albums;'
result = DatabaseConnection.exec_params(sql, [])

result.each do |record|
   record
end

album_repository = AlbumRepository.new
albums = album_repository.all

albums.each do |album|
  puts "#{album.id}: #{album.title}, #{album.release_year}, #{album.artist_id}"
end
