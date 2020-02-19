class Cocktails::CocktailsController

  def run
    make_cocktails
    greeting
    display_cocktails
    user_input
  end

  #Scrapping all of various cocktails
  def make_cocktails
    @cocktails_array = Cocktails::Scraper.scrape_page
    puts @cocktails_array
  end

  def greeting
    puts "Welcome to the cocktails app! Please choose a cocktail from the menu below to see it's description."
  end

  def display_cocktails
    Cocktails::Cocktail.all

    #each.with_index(1){|cocktail,index|
    #puts "#{index}. #{cocktail.name}"}

  end

  def user_input


  end

  def exit_app
    puts "Goodbye!"
    exit
  end

  def enter_correct_input
    puts "Please enter a valid input of a number."
  end







end
