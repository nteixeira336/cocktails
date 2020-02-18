class Cocktails::CocktailsController

  def run
    make_cocktails
    greeting
    user_input
  end

  def make_cocktails
    cocktails_array = Cocktails::Scraper.scrape_page
    Cocktails.create_from_collection(cocktails_array)
  end

  def greeting
    puts "Welcome to the cocktails app!"
  end

  def display_cocktails
    Cocktail.all.each.with_index(1){|cocktail,index|
    puts "#{index}. #{cocktail.name}"}
  end

  def user_input
    input= nil
    while input != "exit"
      input= gets.chomp
      if input.downcase == "cocktails"
        puts "To see the cocktail description, please enter the number."
        display_cocktails
        find_cocktail_by_number
      elsif input.downcase== "exit"
        exit_app
      else
        enter_correct_input
      end
    end
  end

  def exit_app
    puts "Goodbye!"
    exit
  end

  def enter_correct_input
    puts "Please enter a valid input of a number."
  end 







end
