class TeamsController < ApplicationController
  def show
    team = Team.find(params[:id])
    render json: TeamSerializer.new(team)
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
