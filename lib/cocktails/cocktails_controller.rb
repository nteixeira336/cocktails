require 'pry'
class Cocktails::CocktailsController

  def run
    puts "Welcome to the Cocktails CLI App!"
    get_cocktails
    list_cocktails
    get_user_cocktail
  end

  def get_cocktails
    @cocktails= []
  end





end
