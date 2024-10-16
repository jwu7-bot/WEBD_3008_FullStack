# Name: JiaHui Wu
# WEBD-3008
# Challenge 2 Part 2

class HelloWorld
  def initialize(name = nil)
    @name = name
  end

  def hello(greet_name = nil)
    if greet_name.nil? || greet_name.empty?
      "Hello, World. My name is #{@name}!"
    else
      "Hello, #{greet_name}. My name is #{@name}!"
    end
  end
end