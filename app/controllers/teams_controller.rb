class TeamsController < ApplicationController
  # skip_before_action :authorized, only: [:show]

  def show
    teams = Team.my_teams(params[:id])
    if teams.empty?
      render json: {error: "No teams"}
    else
      render json: teams, each_serializer: TeamSerializer
    end
  end

  def update 
    team = Team.find(params[:id])
    team.update(team_params)
  end

  def destroy 
    team = Team.find(params[:id]).destroy
  end 

  private
  def team_params
    params.permit(:name, :organization)
  end
end
