require 'album_repository'



def reset_albums_table
  seed_sql = File.read('spec/seeds_albums.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'sound_library_test' })
  connection.exec(seed_sql)
end

RSpec.describe AlbumRepository do

  before(:each) do
    reset_albums_table
  end

  it "prints all of the albums" do
    repo = AlbumRepository.new

    albums = repo.all
    
    expect(albums.length).to eq 2
    expect(albums[0].id).to eq('1')
    expect(albums[0].title).to eq('Album1')
    expect(albums[0].release_year).to eq('2023')

  end

  it "prints the first album" do
    repo = AlbumRepository.new

    album = repo.first(1)
    expect(album.id).to eq '1'
    expect(album.title).to eq 'Album1'
    expect(album.release_year).to eq '2023'
  end


end

