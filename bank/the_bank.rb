# Get the classes we wrote in 'bank_classes.rb'

require_relative 'bank_classes'

# Keep track of all our customers and accounts.
@customers = []
@accounts = []

# *****************
# ** Home screen **
# *****************

def welcome_screen
  @current_customer = ""

  puts "Welcome to Tech Talent Bank"
  puts "Please choose from the following: "
  puts "----------------------------"
  puts "1. Customer Sign-In"
  puts "2. New Customer Registration"

  choice = gets.chomp.to_i

  case choice
  when 1
    sign_in
  when 2
    sign_up("", "")
  end
end

# *************
# ** Sign In **
# *************

# This is for a user that already has an account
def sign_in
  puts "What's your name?"
  name = gets.chomp
  puts "What is your location?"
  location = gets.chomp

  # Are there even any customers at all?
  if @customers.empty?
    puts "No customer found with that information."
    sign_up(name, location)
  end

  # Ok, there are customers...
  # but, is this user's info correct
  customer_exists = false
  @customers.each do |customer|
    if name == customer.name && location == customer.location
      @current_customer = customer
      customer_exists = true
    end
  end

  if customer_exists
    # If the customer exists, show them the account menu
    account_menu
  else
    # We didn't find the customer, let them:
    # try again?
    # sign up?
    puts "No customer found with that information."
    puts "1. Try again?"
    puts "2. Sign Up"

    choice = gets.chomp.to_i

    case choice
    when 1
      sign_in
    when 2
      sign_up(name, location)
    end
  end
end

# *************
# ** Sign Up **
# *************

# This is for a user that needs a new account
def sign_up(name, location)
  if name == "" && location == ""
    print "What's your name? "
    name = gets.chomp
    print "What's your location? "
    location = gets.chomp
  end

  @current_customer = Customer.new(name, location)

  @customers.push(@current_customer)

  puts "Registration successful!"
  account_menu
end

# ******************
# ** Account Menu **
# ******************

def account_menu
  puts "Account Menu"
  puts "-----------------"
  puts "1. Create an Account"
  puts "2. Review an Account"
  puts "3. Sign Out"

  choice = gets.chomp.to_i

  case choice
  when 1
    create_account
  when 2
    review_account
  when 3
    puts "Thanks for banking with us."
    welcome_screen
  else
    puts "Invalid selection"
    account_menu
  end

end

# ********************
# ** Create Account **
# ********************

def create_account
  print "How much will your initial deposit be? $"
  amount = gets.chomp.to_f

  print "What kind of account will you be opening? "
  account_type = gets.chomp

  new_account = Account.new(@current_customer, amount, (@accounts.length + 1), account_type)
  @accounts.push(new_account)
  puts "Account successfully created!"

  account_menu
end

# ********************
# ** Review Account **
# ********************

def review_account
  @current_account = ""
  print "Which account (type) do you want to review? "
  type = gets.chomp.downcase

  account_exists = false
  @accounts.each do |account|
    if @current_customer = account.customer && type == account.account_type.downcase
      @current_account = account
      account_exists = true
    end
  end

  if account_exists
    current_account_actions
  else
    puts "Try again."
    review_account
  end
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~ Current Account Actions ~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

def current_account_actions
  puts "Choose from the following:"
  puts "-------------------------------"
  puts "1. Balance Check"
  puts "2. Make a Deposit"
  puts "3. Make a Withdrawal"
  puts "4. Return to Account Menu"
  puts "5. Sign Out"

  choice = gets.chomp.to_i

  case choice
  when 1
    puts "Current balance is $#{'%0.2f'%(@current_account.balance)}"
    current_account_actions
  when 2
    @current_account.deposit
    current_account_actions
  when 3
    @current_account.withdrawal
    current_account_actions
  when 4
    review_account
  when 5
    welcome_screen
  else
    puts "Invalid selection."
    current_account_actions
  end
end

welcome_screen


# Tracy's from class

# get the classes we wrote in "bank_classes.rb"

require_relative "bank_classes"

#Keep track of all our customers and accounts

@customers = []
@accounts = []

# *****************

# ** Home screen **

#********************


def welcome_sceen

  # means customer is no longer signed in
  @current-csustomer ""

  puts "Welcome to Tech Talent Bank"
  puts "Please choose from the follwoing:"
  puts "________________________________"
  puts "1. Customer Sign-In"
  purts "2. New Customer Registration"

    choice = gets.chomp.to_i

case choice
when 1
  sign_in
when 2
  sign_up ("", "")

  end

  end

  # this is for a user that already has an acount.
  def sign_in
puts "What's your name?"
name = gets.chomp
puts "What is your location?"
location = gets.chomp

if@customers.empty?
  puts "No customer found with that information."
  sign_up(name, location)

end

ok, there are customers...
#but, is this user's ino correct
customer_exists = false
customers.each do |customer|
  if name == customer.name && location == customer.location @ current_customer = customer
    customer_exists = true

  end

  if customer_exists

    #if the customer exists, show them the menu
    account_menu

  else
    #We didn't find the customer, let them:
    #try again?
    #sign up?

    puts "No customer found with that information."
    puts "1. Try aain?"
    puts "2. Sign Up"

    choice = gets.chomp.to_i

    case choice
    when 1
      sign_in
    when 2
      sign_up (name, location)
    end
      end
  end

  # This is for a user that needs a new account
  def sign_up(name, location)

    if name == "" && location == ""
      print "What's your name?"
      name = gets.chomp
      print "What's your location?"
      location = gets.chomp
    end

    @current_customer = Customer.new (name, location)

    @customer.puch (@current_customer)

    puts "Registration successful!"
    account menu
    # to see the account menu




  end

