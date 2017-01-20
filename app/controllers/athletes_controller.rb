class AthletesController < ApplicationController
  def info
  	@athlete = current_athlete
  end

  def update
  	@athlete = current_athlete
  	@athlete.update_attributes(athlete_params)
  	@athlete.assign_template
  	@athlete.assign_calories
  	@athlete.assign_macros
    if @athlete.template_id == nil
      @athlete.template.id = 1
    else
      
    end
    redirect_to athlete_index_path
  end

  def index
    @question = Question.new
    @comment = Comment.new
    @exercises = Exercise.all
    @trainer = current_trainer
  	@athlete = current_athlete || Athlete.find(params[:id])
    if @athlete.template_id == nil
      @athlete.template_id = 1
    else
      
    end
  	@template = @athlete.template
    @new_template = Template.new
  	@workouts = @template.workouts
  	@template_exercises = {	}
  	@workouts.each do |workout|
  		@template_exercises[workout.day_number.to_s.to_sym] = []
  	end
  	@workouts.each do |workout|
  		@template_exercises[workout.day_number.to_s.to_sym] << workout.exercise
  	end
  end

  def workout
  	@athlete = current_athlete
  	@template = Template.find(params[:template_id])
  	@workouts = @template.workouts.where(day_number: params[:day])
  	@logged_workout = LoggedWorkout.new
  end

  def destroy
    Athlete.find(params[:id]).destroy
    redirect_to home_index_path
  end


  private

  def athlete_params
  	params.require(:athlete).permit(:gender, :age, :height, :weight, :goal_weight, :body_fat, :goal, :days_per_week, :template_id, :calories, :carbs, :protein, :fats)
  end
end
