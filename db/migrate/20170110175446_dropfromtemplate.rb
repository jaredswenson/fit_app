class Dropfromtemplate < ActiveRecord::Migration[5.0]
  def change
  	remove_column :templates, :athlete_id
  end
end
