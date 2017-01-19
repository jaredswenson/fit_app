class Exercise < ApplicationRecord
	has_many :workouts
	has_many :template, through: :workouts
	has_many :logged_workouts
end
