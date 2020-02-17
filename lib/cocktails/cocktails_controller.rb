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







end
