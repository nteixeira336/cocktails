class Cocktails::Cocktail

attr_accessor :name, :description

@@all= []

  def initialize(cocktail_hash)
    cocktail_hash.each do |key,value|
      self.send "#{key}=",value
    end
    @@all << self
  end

  def self.create_from_collection(cocktails_array)
    cocktails_array.each do |cocktail|
      self.new(cocktail)
    end
  end 

end
