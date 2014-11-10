class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.integer :person_id
      t.string :name
      t.string :animal

      t.timestamps
    end
  end
end
