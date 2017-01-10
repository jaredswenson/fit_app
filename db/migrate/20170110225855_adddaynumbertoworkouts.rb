class Adddaynumbertoworkouts < ActiveRecord::Migration[5.0]
  def change
  	add_column :workouts, :day_number, :integer
  end
end
