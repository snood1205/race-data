class TeamsController < ApplicationController
  def index
    teams = Team.all
    render json: teams
  end

  def show
    team = Team.find_by name: params[:id]
    render json: team
  end

  def create
    team = Team.new team_params
    if team.save
      render json: team, status: :created
    else
      render json: team.errors, status: :bad_request
    end
  end

  def update
    team = Team.find params[:id]
    if team.update team_params
      render json: team
    else
      render json: team.errors, status: :bad_request
    end
  end

  def drivers
    team = Team.find_by name: params[:id]
    render json: team.drivers
  end

  private

  def team_params
    params.require(:team).permit(:name, :headquarters, :founded, :championships)
  end
end
