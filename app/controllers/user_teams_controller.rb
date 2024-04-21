class UserTeamsController < ApplicationController
	protect_from_forgery with: :null_session

	def new
		@user_contest = Contest.find(params[:contest_id])
		@user_contest1 = UserTeam.new
	end

	def show 
		@user_contest = Contest.find(params[:id])
		@user_data = @user_contest.match.teams
	end

	def create 
		array = params[:player_ids].as_json
		blank_array = []
		array.map{ |obj| blank_array << obj.first if obj.last.values[0] == "1"}
		players = Player.find(blank_array)
		if players.length == 11 
	   	a= current_user.user_teams.create(contest_id: params[:contest_id])
      a.players << players
      @user_teams = current_user.user_teams
      byebug
      redirect_to user_teams_path(:contest_id)
    else 
    	redirect_to new_contest_user_team_path
      flash[:message] = "Your Player Should Be 11"
    	# flash.alert = "User Plyer should be greater then 11"
    	#redirect_to new_contest_user_team_path(:contest_id), notice: "Book not found"
    end

  	def see
    	@user_contest = Contest.find(id: params[:id])
  	end

		
		# 	@player = Player.new(params_method)
		# 	for i in player do 
		# 	  if i.save
			  	
		# 	  end
		# 	end
		# 	redirect_to user_contests_path
		#   end
  end

  # private 

  # def permit_method
  # 	params.require(:user_team).permit(:player_name,:user_id,:contest_id,:player_id)
  # end
    
end
