class Athlete < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

		belongs_to :trainer
		has_one :template

	def rep_count
		if gender == "Male" 
			if goal == "Bulk"
				8
			elsif goal == "fat loss"
				12
			else #goal == "transform"

			end
		else # this would be female
			if goal == "Bulk"
				10
			elsif goal == "fat loss"
				15
			else #goal == "transform"

			end
		end	
	end	
end
