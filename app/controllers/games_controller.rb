require 'open-uri'

class GamesController < ApplicationController

  def new
    @letters = ['Y', 'Z', 'D', 'U', 'Q', 'E', 'Z', 'Y', 'Q', 'I']
  end

  def score
    @letters = ['Y', 'Z', 'D', 'U', 'Q', 'E', 'Z', 'Y', 'Q', 'I']
    url = 'https://wagon-dictionary.herokuapp.com/'
    @word = params[:word]
    found = true
    @word.each_char do |letter|
      unless @letters.include?(letter.capitalize)
        found = false
      end
    end
    if found
      response = URI.open(url + @word).read
      @answer = JSON.parse(response)
    else
      @answer = "not found"
    end
  end
end
