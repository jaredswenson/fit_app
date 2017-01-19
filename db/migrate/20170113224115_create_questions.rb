class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
    	t.references :athlete
    	t.string :content
    	t.boolean :read, :default => false

      t.timestamps
    end
  end
end
