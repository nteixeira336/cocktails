class Cocktails::CocktailsController

  def run
    make_cocktails
    greeting
  end

  def make_cocktails
    cocktails_array = Scraper.scrape_page
    Cocktails.create_from_collection(cocktails_array)
  end

  def greeting
    puts "Welcome to the cocktails app!"
  end

  def display_cocktails
    Cocktail.all.each.with_index(1){|cocktail,index|
    puts "#{index}. #{cocktail.name}"}
  end 







end
