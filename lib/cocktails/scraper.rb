
class Cocktails::Scraper

  def self.scrape_page
    page= Nokogiri::HTML(open("https://www.allrecipes.com/recipes/133/drinks/cocktails/"))
    cocktail_info= page.css("article.fixed-recipe-card")
    cocktails=[]
    cocktail_info.each do |cocktail|
      cocktail_info= {
        :name => cocktail.css("h3.fixed-recipe-card_h3 a span").text,
        :description => cocktail.css("div.fixed-recipe-card_description ng-isolate-scope")}

      cocktails << cocktail_name
    end
    cocktails
  end

end
