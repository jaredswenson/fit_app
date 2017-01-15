class Setreadtobedefault < ActiveRecord::Migration[5.0]
  def change
  	change_column :questions, :read, :boolean, :default => false
  end
end
