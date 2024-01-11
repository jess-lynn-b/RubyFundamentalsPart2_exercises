# Practice problem using classes and objects:

class Animal
  def initialize(name)
    @name = name
  end

  def speak
    #puts @name
    puts "I am an animal"
  end
end

# Create an instance of dog/cat inheriting from the Animal Class
class Dog < Animal
  def speak
    puts "I am a dog"
  end
end

class Cat < Animal
  def speak
    puts "I am a cat"
  end
end

dog = Dog.new("dog")
dog.speak 

cat = Cat.new("cat")
cat.speak 

# Tasks using encapsulation and access modifiers that includes public and private methods

class Vehicle
  def initialize(make, model)
    @make = make
    @model = model
  end

  def print_make
    puts @make
  end

  def print_model
    puts @model
  end

  def print_details
    puts @make
    puts @model
  end 

class Car < Vehicle
  def intialize(make, model, year)
    super(make, model)
    @year = year
  end

  def print_details
    puts @make
    puts @model
    puts @year
  end
end

# using Self in class method

class User
  def initialize(name)
    @name = name
  end
  
  def self.say_hello
    puts "Hello, my name is 
    #{self.name}"
  end

  def name
    @name
  end
end
  user = User.new("Amy")
  
  User.say_hello # => Hello, my name is Amy
end

# Classes and Objects

class Car
  def initialize(color)
    @color = color
  end

  def print_color
    puts @color
  end
end

# inheritance
class Fruit
  def initialize(name)
    @name = name 
  end

  def print_name
    @name
  end
end

require_relative 'fruit'

class Apple < Fruit
end

require 'rspec'

require_relative '../apple'

describe Apple do
  describe '#print_name' do
    it 'prints the name of the fruit' do
      apple = Apple.new("apple")

      expect(apple.print_name).to eq("apple")
    end
  end
end
