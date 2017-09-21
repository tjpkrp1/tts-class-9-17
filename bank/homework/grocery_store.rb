
# Classes
#  *Product

*********************
  **Manager Class**
*********************


class manager

# manager needs to change quantities,
# to add products to categories
# be able to view categories of products and an individual product
# change the quantity of a product
# needs to be able to add products to any category



  attr_accessor (category, name, quantity, serial_number, cost, sell_price, sell_by_date)


  puts "Welcome to Autoinventory"
  puts "Please choose from the following food categories: "
  puts "----------------------------"
  puts "1. Fruit"
  puts "2. Vegetables"
  puts "3. Meat"

  choice = gets.chomp

  case choice

  when 1
    Fruit
  when 2
    Vegetables
  when 3
    Meat
  end


  # ***********
  # **Fruit**
  # ***********

  def Fruit
    puts "What fruit?"
    gets.chomp
    if @fr



  # Are there any of these fruit in inventory?
  if @fruit.empty?
    puts "That fruit does not exist in inventory."
    puts 1. "Try again."
    puts 2. "Exit"
  end

  if



  end



  #  ************
  #  *Vegetables*
  #  *************




  # **************
  #   ***Meat***
  # **************




# *****************
# Product Class
# ****************


# class Product_Info




# category 1 == fruit
# category 2 == vegetables
# category 3 == meat

# Item 1 (1, 2, 3, 4, 5)
# Item 2 (1, 2, 3, 4, 5)
# Item 3 (1, 2, 3, 4, 5)


class Product

# #categories
# Fruit
# vegetables
# meat


Products
    def initialize (Apple, Oranges, Plum, Grape, Banana, Broccoli, Corn, String_Beans, Cabbage, Green_Peas, Carrots, Lamb, Beef, Chicken, Pork, Turkey)

        @apple = apple
        @orange = orange
        @plum = plum
        @grape = grape
        @banana = banana
        @broccoli = broccoli
        @corn = corn
        @string_beans = string_beans
        @cabbage = cabbage
        @green peas
        @carrots = carrots
        @lamb = lamb
        @beef = beef
        @chicken = chicken
        @pork = pork
        @chicken = chicken



      # ???(category, name, quantity, serial number, cost, sell price, sell by date)
      #  @category = category
      #  @name = name
      #  @quantity = quantity
      #  @serial_number = serial_number
      #  @cost = cost
      #  @sell_price = sell_price
      #  @sell_by_date = sell_by_date???

    end





# revenue

sell_price - cost









  # **************
  # **Manaager**
  # *************

# Mgr. needs to know how many need to be sold within a week (list by product)
# Mgr. needs to know how much each poduct costs
# Mgr. needs to know how much revenue each product brings in.


# Manager must be able to put something on sale and take it off sale.


Product sells for regular or discount
    class product = sell_price
    else cost == sell_price - discount



# What is the sale discount?
sell price - sale = discount






