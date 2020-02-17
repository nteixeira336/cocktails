class Cocktails::Cocktail

attr_accessor :name, :description

@@all= []

def initialize(cocktail_hash)
  cocktail_hash.each do |key,value|
    self.send "#{key}=",value
  end
  @@all << self
end
