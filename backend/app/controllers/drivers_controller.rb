# frozen_string_literal: true

class DriversController < ApplicationController
  def index
    drivers = Driver.joins(:team).select('drivers.*, teams.name as team_name')
    render json: drivers
  end

  def show
    driver = Driver.find_by name: params[:id]
    render json: driver
  end

  def create
    driver = Driver.new driver_params_with_team_loaded
    if driver.save
      render json: driver, status: :created
    else
      render json: driver.errors, status: :bad_request
    end
  end

  def update
    driver = Driver.find params[:id]
    if driver.update driver_params_with_team_loaded
      render json: driver, status: :ok
    else
      render json: driver.errors, status: :bad_request
    end
  end

  private

  def driver_params
    params.require(:driver).permit(:name, :nationality_iso3, :date_of_birth, :team_name, :biography)
  end

  def driver_params_with_team_loaded
    driver_params.tap do |params|
      team = Team.find_by name: params[:team_name]
      if team.nil?
        team = Team.new name: params[:team_name]
        team.save
        team.reload
      end
      params[:team_id] = team.id
      params.delete :team_name
    end
  end
end
