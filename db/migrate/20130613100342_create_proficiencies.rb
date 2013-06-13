class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.references :user
      t.references :skill
      t.integer :experience
      t.boolean :formal
      
      t.timestamps
    end
  end
end
