require 'json'
require 'rest-client'
require_relative 'story'
require_relative'categories'

class RemoteSource
  RemoteSource << Category 
  def self.get
   	

   	res = JSON.load(RestClient.get("http://api.nytimes.com/svc/mostpopular/v2/#{resource_type}/#{section}/30.json?api-key=e82456d31d70bdda520e1c0a0352e603:8:67860687"))
	res.map do |story|
	Story.new story["url"], story["section"], story["title"], story["abstract"], story["published_date"]
		end
	end
end