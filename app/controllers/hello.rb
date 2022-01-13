require "open-uri"
require 'json'

letters = ['Y', 'Z', 'D', 'U', 'Q', 'E', 'Z', 'Y', 'Q', 'I']
url = "https://wagon-dictionary.herokuapp.com/"
word = "yd"

answer = true
word.each_char do |letter|
  unless letters.include?(letter.capitalize)
    answer = false
  end
end

puts answer
