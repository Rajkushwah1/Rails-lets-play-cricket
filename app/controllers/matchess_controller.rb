class MatchessController < ApplicationController
	def index 
		@matches = Match.all
	end
end
