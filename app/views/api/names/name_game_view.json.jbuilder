json.message_key @message_key
if @message_key[0].downcase == "a"
  json.friendly_message @friendly_message
end
json.guess_game_message @guess_game_message
json.result_message @message
p @user_input