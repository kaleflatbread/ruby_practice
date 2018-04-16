# this is the difference between class methods and instance methods in ruby
class Dog
  def initialize
    puts 'you just called the new method which calls this initialize method'
    @age = 0
  end

  def age=(new_age)
    @age = new_age
  end

  def age
    puts "age of this dog is: #{@age}"
  end

  def bark
    puts 'this is a bark'
  end

  def bowwow
    puts 'this is a bowwow'
  end

  def self.woof
    puts 'this is a woof'
  end
end

Dog.woof
bowwow = Dog.new
bowwow.bark
