class Addcolumnstoathletes < ActiveRecord::Migration[5.0]
  def change
  	add_column :athletes, :height, :string
  	add_column :athletes, :weight, :string
  	add_column :athletes, :goal, :string
  end
end
