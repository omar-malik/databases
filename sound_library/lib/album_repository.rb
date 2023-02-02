require_relative './album'

class AlbumRepository

    def all
      albums = []
      #executes sql query: SELECT id, name, cohort_name FROM students;
      # Returns an array of Student objects.
      sql = "SELECT id, title, release_year, artist_id FROM albums;"
      result_set = DatabaseConnection.exec_params(sql, [])

      result_set.each do |record|
        album = Album.new

        album.id = record['id']
        album.title = record['title']
        album.release_year = record['release_year']
        album.artist_id = record['artist_id']

        albums << album

      end
      return albums

    end

    def first(id)
      # Executes the SQL query: SELECT id, name, cohort_name FROM students WHERE id = $1;
      # returns single student object
      return all[0]
    end

  end

