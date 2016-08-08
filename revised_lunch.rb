require 'pry'
class LunchMenu
  MENU_PRICES = [2.0, 1.5, 5.0]

  def initialize
    puts 'Welcome to the Cafeteria!'
    puts 'What would you like to eat?'
    puts '1) Pizza ($2.00)'
    puts '2) Sloppy Joe ($1.50)'
    puts '3) Hamburger($5.00)'
    
    selection = gets.to_f
    if selection == 0
      puts 'Please Select One of the option (1-3)'
      
    elsif selection >= 4
      puts 'Please Select One of the option (1-3)'

    else
      side_dishes
    end  
  end
  
  def side_dishes
    puts 'What sides would you like?'
    puts '1) French Frys'
    puts '2) Mashed Potatos'
    puts '3) Veggies'
  
    side_selections = gets.to_f
    case side_selections
      when 1
        side_dishes2
      when 2
        side_dishes2
      when 3
        side_dishes2
      else 
      puts 'Please select a valid options!'
      side_selections  
    end
  end

  def side_dishes2
    puts 'What would you like for you second dishes.'
    puts '1) Mashed Potatos'
    puts '2) Veggies'
    puts '3) Salad'

    side_selections2 = gets.to_f
    case side_selections2
    when 1
      add_another_side
    when 2
      add_another_side
    when 3
      add_another_side
    else 
      puts 'Please select a valid option!'      
    end
  end

  def add_another_side
    puts 'Would you like to add another side? (y/n)'
    anwers = gets.strip.downcase
    if answers == 'y'
      side_dishes
    else 
      total
    end  
  end

  def total
    
  end
end

lunch = LunchMenu.new

