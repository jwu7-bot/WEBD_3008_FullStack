# Name: JiaHui Wu
# WEBD-3008
# Challenge 2 Part 4

class Pangram
  ALPHABET = ('a'..'z')

  def self.is_pangram?(str)
    lower_str =str.downcase
    ALPHABET.all? { |letter| lower_str.include?(letter) }
  end
end