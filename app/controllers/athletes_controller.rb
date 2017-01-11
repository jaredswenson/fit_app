class AthletesController < ApplicationController
  def info
  	@athlete = current_athlete
  end

  def update
  	@athlete = current_athlete
  	@athlete.update_attributes(athlete_params)
  	@athlete.assign_template
    redirect_to athlete_index_path
  end

  def index
  	@athlete = current_athlete
  	@template = @athlete.template
  	@workouts = @template.workouts
  	@template_exercises = {	}
  	@workouts.each do |workout|
  		@template_exercises[workout.day_number.to_s.to_sym] = []
  	end
  	@workouts.each do |workout|
  		@template_exercises[workout.day_number.to_s.to_sym] << workout.exercise
  	end
  	puts @template_exercises.inspect
  end

  private

  def athlete_params
  	params.require(:athlete).permit(:gender, :height, :weight, :goal_weight, :body_fat, :goal, :days_per_week, :template_id)
  end
end


#template name, workouts, exercises in that workout