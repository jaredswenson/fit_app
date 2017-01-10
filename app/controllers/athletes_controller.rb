class AthletesController < ApplicationController
  def info
  	@athlete = current_athlete
  end

  def update
  	@athlete = current_athlete
  	@athlete.update_attributes(athlete_params)
  	if params[:days_per_week] == 3
      @athlete.template_id = Template.where(name: "3 day").first.id
    elsif params[:days_per_week] == 4
    	@athlete.template_id = Template.where(name: "4 day").first.id
    else #if they select 5 days per week
      @athlete.template_id = Template.where(name: "5 day").first.id
    end
    redirect_to home_index_path
  end

  private

  def athlete_params
  	params.require(:athlete).permit(:gender,:height, :weight, :body_fat, :goal, :days_per_week)
  end
end
