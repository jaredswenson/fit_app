class Question < ApplicationRecord
	belongs_to :athlete
	has_many :comments
end
