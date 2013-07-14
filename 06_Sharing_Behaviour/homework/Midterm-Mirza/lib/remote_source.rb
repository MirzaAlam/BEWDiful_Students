require 'json'
require 'rest-client'

class RemoteSource
	

	def initialize(resource_type, section)
		@resource_type = resource_type
		@section = section 
	end

	def get
	   	res = JSON.load(RestClient.get("http://api.nytimes.com/svc/mostpopular/v2/#{@resource_type}/#{@section}/30.json?api-key=e82456d31d70bdda520e1c0a0352e603:8:67860687"))
		res["results"].map do |story| 
			Story.new story["url"], story["section"], story["title"], story["abstract"], story["published_date"]
		end
	end
end