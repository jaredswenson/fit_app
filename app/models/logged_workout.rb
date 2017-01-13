class LoggedWorkout < ApplicationRecord
	belongs_to :athlete
	belongs_to :template
end
