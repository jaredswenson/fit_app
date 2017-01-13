class CreateLoggedWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :logged_workouts do |t|
    	t.references :athlete
    	t.references :template
    	t.integer :rep_count
    	t.integer :sets
    	t.integer :weight

      t.timestamps
    end
  end
end
