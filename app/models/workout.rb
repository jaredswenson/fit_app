class Workout < ApplicationRecord
	belongs_to :template
	belongs_to :exercise
end
