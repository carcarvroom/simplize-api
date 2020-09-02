class TeamsController < ApplicationController
    
    def show
        team = Team.all_team_members(params[:id])
        render json: TeamSerializer.new(team)
    end

    def destroy 
        team = Team.find(params[:id]).destroy
    end 

end
