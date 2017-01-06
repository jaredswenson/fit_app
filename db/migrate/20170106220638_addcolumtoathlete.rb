class Addcolumtoathlete < ActiveRecord::Migration[5.0]
  def change
  	add_column :athletes, :trainer_id, :integer
  end
end
