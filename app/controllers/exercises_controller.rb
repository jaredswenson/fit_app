class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def edit
  end

  def show
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to exercises_path
    else
      redirect_to exercises_new_path
    end
  end

  def update
  end

  def destroy
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :category, :primary_muscle, :secondary_muscle, :instruction)
  end
end
