class ContestesController < ApplicationController

	def index 
		@contests = Contest.all 
	end

	def show 
    	@match = Match.find(params[:id])
    	@contests = @match.contests
    end

end
