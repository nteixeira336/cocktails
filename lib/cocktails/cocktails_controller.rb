require 'pry'

class Cocktails::CocktailsController

  def run
    puts "Welcome to the Cocktails CLI App!"
    get_user_cocktail
  end

  def get_user_cocktail
    puts "Please choose a cocktail to see it's ingredients."
    input= gets.chomp
    response= API.new.get_user_cocktail(input)
    Cocktail.new(response)
    binding.pry
  end





end
