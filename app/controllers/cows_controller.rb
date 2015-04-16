class CowsController < ApplicationController
	require "httparty"

	def index
		@cow = Cow.new
		# These code snippets use an open-source library. http://unirest.io/ruby
		@response = HTTParty.get "https://thibaultcha-fortunecow-v1.p.mashape.com/random",
  		headers:{
    	"X-Mashape-Key" => "hQNOf8suJ7mshTCc7fKEAZk1BHXxp1MnbfwjsnMudoAOZ13vbX",
    	"Accept" => "text/plain"
  		}

  		#@response = @cow.split_response @response
	end

end