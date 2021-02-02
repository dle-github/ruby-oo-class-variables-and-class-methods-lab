class Song
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        p "==============="
        @name = name
        @artist = artist
        @genre = genre
        ############################
        @@count += 1
        @@artists << artist
        @@genres << genre
        p "[initialize]"
        p "name: #{@name}"
        p "artist: #{@artist}"
        p "genre: #{@genre}"
        p "@@count: #{@@count}"
        p "@@artists: #{@@artists}"
        p "@@genres: #{@@genres}"
    end

    attr_accessor :name, :artist, :genre

    def self.count
        p "==============="
        p "[self.count]"
        p "@@count: #{@@count}"
        @@count
    end

    def self.artists
        p "==============="
        p "[self.artists]"
        p "@@artists.uniq: #{@@artists.uniq}"
        @@artists.uniq

    end

    def self.genres
        p "==============="
        p "[self.genres]"
        p "@@genres.uniq: #{@@genres.uniq}"
        @@genres.uniq
    end

    def self.genre_count
        p "==============="
        p "[self.genre_count]"
        p "self.genres: #{self.genres}"
        p "@@genres: #{@@genres}"
        hash = Hash.new
        self.genres.each do |x|
            hash["#{x}"] = @@genres.count(x)
        end
        hash
    end

    def self.artist_count
        p "==============="
        p "[self.artist_count]"
        p "self.artist_count: #{self.artists}"
        p "@@artists: #{@@artists}"
        hash = Hash.new
        self.artists.each do |x|
            hash["#{x}"] = @@artists.count(x)
        end
        hash
    end
end
