class Api::NamesController < ApplicationController
  def name_game
    @message_key = params["name"].upcase
    @number_guess = params["number_guess"].to_i
    @friendly_message = "Hey, your name starts with the first letter of the alphabet!"
    @guess_game_message = "guess my number between 0 and 100"
    @number = 36
    @message = ""
    if @number_guess > @number
      @message = "you're too high"
    elsif @number_guess < @number
      @message = "you're too low"
    elsif @number_guess == @number
      @message = "You win! #{@number} is correct."
    end
    render "name_game_view.json.jbuilder"
  end
end
