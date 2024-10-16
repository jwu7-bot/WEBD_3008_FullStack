# Name: JiaHui Wu
# WEBD-3008
# Challenge 2 Part 5

class Grains
  def self.square(square_number)
    2**(square_number - 1)
  end

  def self.total
    (1..64).sum{ |square| square(square) }
  end
end