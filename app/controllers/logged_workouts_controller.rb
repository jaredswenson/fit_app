class LoggedWorkoutsController < ApplicationController

	def create
		params[:logged_workout].each do |key,logged_workout|
			logged_workout.permit!
			LoggedWorkout.create!(logged_workout)	
		end
  		redirect_to athlete_index_path 
	end

	private
  def workout_params
    params.require(:logged_workout).permit(:sets, :rep_count, :weight, :comment, :athlete_id, :template_id, :exercise_id)
  end
end
