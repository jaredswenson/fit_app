class Comment < ApplicationRecord
	belongs_to :trainer, optional: true
	belongs_to :athlete, optional: true
	belongs_to :question
end
