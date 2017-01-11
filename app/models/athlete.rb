class Athlete < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

		belongs_to :trainer
		belongs_to :template

	def rep_count
		if gender == "Male" 
			if goal == "Bulk"
				8
			elsif goal == "fat loss"
				12
			else #goal == "transform"
				10
			end
		else # this would be female
			if goal == "Bulk"
				10
			elsif goal == "fat loss"
				15
			else #goal == "transform"
				12
			end
		end	
	end	

	def assign_template
		if self.days_per_week == 3
			self.template_id = Template.where(name: "3 day workout").first.id
		elsif self.days_per_week == 4
			self.template_id = Template.where(name: "4 day workout").first.id
		else # 5 days per week
			self.template_id = Template.where(name: "5 day workout").first.id
		end
		save
	end
end
