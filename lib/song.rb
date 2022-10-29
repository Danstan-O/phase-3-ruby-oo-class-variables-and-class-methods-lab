require "pry"

class Song
    attr_accessor :name, :artist, :genre

        @@count=0
         @@genres=[]
         @@artists=[]
    
        
       def initialize(name, artist, genre)
       @name=name
       @artist=artist
       @genre=genre
       @@count +=1 
       @@genres << genre
       @@artists << artist 

    end

       def self.count
       @@count
       end 

       def self.artists
       
         @@artists.uniq
       end 

       def self.genres
           @@genres.uniq
       end 

       def self.genre_count
        new_set_of_genres = Song::genres
        returned_values = {}
        new_set_of_genres.each do |new_set_of_genre|
            returned_values["#{new_set_of_genre}"] = @@genres.count(new_set_of_genre)
        end
        returned_values
    end

    def self.artist_count
        non_repetitive_artists = Song::artists
        returned_values = {}
        non_repetitive_artists.each do |non_repetitive_artist|
            returned_values["#{non_repetitive_artist}"] = @@artists.count(non_repetitive_artist)
        end
        returned_values
    end

end

