class TrainersController < ApplicationController
	before_action :authenticate_trainer!
	def index
		@athletes = Athlete.all
		@exercises = Exercise.all
		@templates = Template.all
		@exercise = Exercise.new
		@template = Template.new
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
