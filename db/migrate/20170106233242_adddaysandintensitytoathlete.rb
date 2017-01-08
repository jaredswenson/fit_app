class Adddaysandintensitytoathlete < ActiveRecord::Migration[5.0]
  def change
  	add_column :athletes, :intensity, :string
  	add_column :athletes, :days_per_week, :string
  end
end
