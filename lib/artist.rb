require 'pry'

class Artist 
  
  attr_accessor :name
  
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @songs = []
  end 
  
  def self.all
    @@all
  end  
  
  def add_song(song)
    @songs << song
  end  
  
  def save 
    @@all << self
  end  
  
  def self.find_or_create_by_name(name) 
    artist = @@all.find do |a|
      name == a.name
      end 
      if artist = nil 
        artist.name = name
    end
    artist
  end  

 
 
  def print_songs 
    
  
  end  
    
  
end  