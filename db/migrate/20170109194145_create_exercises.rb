class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
    	t.string :name
  		t.string :category
  		t.string :primary_muscle
  		t.string :secondary_muscle
  		t.text :instruction
      t.timestamps
    end
  end
end
