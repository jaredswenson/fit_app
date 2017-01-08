class AthletesController < ApplicationController
  def info
  	@athlete = current_athlete
  end

  def update
  	@athlete = current_athlete.update_attributes(athlete_params)
  	redirect_to home_index_path
  end

  private

  def athlete_params
  	params.require(:athlete).permit(:height, :weight, :body_fat, :goal, :intensity, :days_per_week)
  end
end
