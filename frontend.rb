require 'unirest'

response = Unirest.post("localhost:3000/interfaces/2")

puts JSON.pretty_generate(response.body)