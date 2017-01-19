class Addexerciseidtologgedworkouts < ActiveRecord::Migration[5.0]
  def change
  	add_reference :logged_workouts, :exercise, index: true
  end
end
