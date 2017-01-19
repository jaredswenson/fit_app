class CreateLoggedWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :logged_workouts do |t|
    	t.references :athlete
    	t.references :template
      t.references :exercise
    	t.integer :rep_count
    	t.integer :sets
    	t.integer :weight
      t.text :comment

      t.timestamps
    end
  end
end
