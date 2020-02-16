class Cocktails::Cocktails

  attr_accessor :name, :ingredients

  def initialize(resp_hash)
    resp_hash.each do |key,value|
      self.send ("#{key}=",value)
    end

    resp_hash.each 
  end

end
