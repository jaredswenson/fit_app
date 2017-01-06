class Addcolumnstoathletes < ActiveRecord::Migration[5.0]
  def change
  	add_column :athletes, :height, :string
  	add_column :athletes, :weight, :integer
  	add_column :athletes, :birthday, :date
  	add_column :athletes, :body_fat, :string
  	add_column :athletes, :goal, :string
  end
end
