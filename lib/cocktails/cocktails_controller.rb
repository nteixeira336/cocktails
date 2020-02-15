require 'pry'
class Cocktails::CocktailsController

  def run
    puts "Welcome to the Cocktails CLI App!"
    get_cocktails
    list_cocktails
    get_user_cocktail
  end

  def get_user_cocktail
    puts "Please choose a cocktail to see it's ingredients."
    input= gets.chomp
    API.new.get_user_cocktail(input)
  end





end
