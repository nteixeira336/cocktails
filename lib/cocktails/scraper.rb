
class Cocktails::Scraper
  @@page= Nokogiri::HTML(open("https://www.allrecipes.com/recipes/133/drinks/cocktails/"))
  def self.scrape_page
    all =[]
    @@page.search(".fixed-recipe-card__h3").each_with_index do
      |cocktail, num|
      all.push("#{num + 1}" +". " "#{cocktail.text.delete("\n,\r").strip}")

    end
    all

  end

end
