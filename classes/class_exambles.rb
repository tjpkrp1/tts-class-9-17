class Person

  # attr_reader :name

  def initialize (name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

    def age
      @age

  end

  def birthday
    @age +=1
  end

  def change_name(new_name)
    @name = new_name

end

my_profile = Person.new("Ryan", 41)

puts "Hi, I'm #{my_profile.name} and I am #{my_profile.age} years old."

puts "I jsut had a birthdayand now I'm #{my_profile.age} years old."

my_profile .change_name ("Geppetto")
puts "I just changed my name. Henceforth, I shall be known as #{my_profile.name}!"


tom = person.new("Tom", 4)

puts "Hi, I'm #{tom.name}. I'm not that other person. I'm #{tom.age} years old."

tom.birthday
puts "Hey everyone, #{tom.name} had a birhtday and he's #{tom.age}", years old. which is different from .
end

def jump
  puts "#{self.name} just jumped"

end



end


class Product

attr_accessor(:name, :price, :quantity :brand)

  def initialize(name, price, quantity, brand)
    @name = name
    @price = price
    @quantity = quantity
    brand = brand

    end

