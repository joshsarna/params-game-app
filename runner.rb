require 'unirest'

response = Unirest.post("http://localhost:3000/api/name_game?name=josh", parameters: {guess: "37"})

p response.body["result_message"]