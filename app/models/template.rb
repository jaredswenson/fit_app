class Template < ApplicationRecord
	has_many :athletes
	has_many :workouts
	has_many :exercises, through: :workouts
end
