class Athlete < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

		belongs_to :trainer
		belongs_to :template, optional: true
		has_many :logged_workouts
		has_many :questions
		has_many :comments

	def rep_count
		if self.gender == "Male" 
			if goal == "Build Muscle"
				8
			elsif goal == "Lose Fat"
				"12 <br><i>Super set if possible!</i>".html_safe 
			else #goal == "transform"
				10
			end
		else # this would be female
			if goal == "Build Muscle"
				10
			elsif goal == "Lose Fat"
				"15 <br><i>Super set if possible!</i>".html_safe 
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

	def assign_calories
		if self.gender == "Female"
			if self.goal == "Lose Fat"
				self.calories = self.weight * 11
			elsif self.goal == "Build Muscle"
				self.calories = self.weight * 13
			else
				self.calories = self.weight * 12
			end
		else
			if self.goal == "Lose Fat"
				self.calories = self.weight * 12
			elsif
				self.calories = self.weight * 14
			else
				self.calories = self.weight * 13
			end
		end
		save
	end

	def assign_macros
		if self.goal == "Lose Fat"
			self.carbs = self.weight * 0.75
			self.protein = self.weight
			self.fats = self.weight * 0.3

		elsif self.goal == "Build Muscle"
			self.carbs = self.weight * 1.2
			self.protein = self.weight * 1.2
			self.fats = self.weight * 0.5

		else
			self.carbs = self.weight
			self.protein = self.weight
			self.fats = self.weight * 0.4
		end
		save
	end

	def last_seven_days
		self.logged_workouts.where("created_at >= ?", Time.now - 7.days)
	end

end
