class TrainersController < ApplicationController
	def index
		@athlete = Athlete.all
		@exercises = Exercise.all
		@exercise = Exercise.new
		@trainer = current_trainer
	end

	def new

	end

	def edit
	end

	def show
	end

	def create
	end

	def update
		@trainer = current_trainer
		@trainer.update_attributes(trainer_params)
	end

	def destroy
	end

	private

  def trainer_params
  	params.require(:trainer).permit(:email)
  end
end
