# Write your code here

require 'net/http'
require 'open-uri'
require 'json'


class GetRequester

    URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
    def initialize (url)
    end 

    def get_response_body 
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body 
    end 

    def parse_json 
        get_requester = JSON.parse(self.get_response_body)
        get_requester.collect do |get_requester|
            get_requester
            
        end 
    end 
    
end 