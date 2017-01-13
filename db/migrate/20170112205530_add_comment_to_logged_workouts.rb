class AddCommentToLoggedWorkouts < ActiveRecord::Migration[5.0]
  def change
  	add_column :logged_workouts, :comment, :text
  end
end
