class Cocktails::Scraper

  BASE= 'https://www.thecocktaildb.com/api/json/v1/1/'

  def get_user_cocktail(input)
    HTTParty.get(BASE+"cocktail/#{input}")

  end


end
