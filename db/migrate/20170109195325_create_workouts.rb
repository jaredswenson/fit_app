class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
    	t.references :exercise
    	t.references :template
    	t.integer :day_number
    end
  end
end
