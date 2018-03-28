require 'unirest'

response = Unirest.delete("localhost:3000/interfaces/3")

puts JSON.pretty_generate(response.body)