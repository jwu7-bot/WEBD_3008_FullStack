# Name: JiaHui Wu
# WEBD-3008
# Challenge 2 Part 1

class HelloWorld
  def self.hello (name = nil)
    if name.nil? || name.empty?
      "Hello, World!"
    else
      "Hello, #{name}!"
    end
  end
end