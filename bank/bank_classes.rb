# => Classes
# => *Customer
# => *Account

# => A customer will be tied to an account with a "customer" attribute.

# ***************************
# # => ** Customer Class **
# ***************************

class Customer

    attr_accessor  :name, :location

  def initialize (name, location)
      @name = name
      @location = location

      end


  end


  # ************************
  #  ** Account Class **
  #*************************


  class Account

    attr_reader :balance, :account_number
    attr_accessor :customer, :account_type


      def initialize (customer, balance, account_number, account_type)
        @customer = customer
        @balance = balance
        @account_number = account_number
        @account_type = account_type

      end

      def deposit

        # ask how much to deposit
        puts "How much would you like to deposit?"
        print "$"
        amount = gets.chomp.to_f
        # add the amount deposited to the balance

        # @balance + @balance + amount
        @balance += amount

       #Tell them their new balance
        puts "Your new balance is $#{'%0.2f'%(@balance}"

      end

      def withdrawal

        #Ask how much to withdrawal
        puts "How much would you like to withdraw today?"
        print "$"
        amount = gets.chomp.to_f


        #Check to see if they've got enough to withdraw the amount


        #TODO: ADD OVERDRAFT PROTECTION
        #Subtract the amount from the balance
        if @balance <amount
          puts "Dang! Who do you think you are!? Get a job!"
          #Let them ge the money, and charge a $25 overdraft fee
          puts "You don't have that much, silly.  YOu sure you wanna do tha.  We'll let you, but there's a $25 overdraft fee. [y/n]
          ansewr = gets.champ
          if answer == 'y'
          @balance -= (amount + 25)
        else
          #puts
          @balance -= amount
        end


        #Tell the new balance
        puts "Your new balance is $#{'%0.2f'%(@balance)}"



      end



  end
