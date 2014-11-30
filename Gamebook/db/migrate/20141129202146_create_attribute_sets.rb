class CreateAttributeSets < ActiveRecord::Migration
  def change
    create_table :attribute_sets do |t|
      t.integer :total
      t.integer :strength
      t.integer :dexterity
      t.integer :stamina
      t.integer :intelligence
      t.integer :perception
      t.integer :willpower

      t.timestamps
    end
  end
end
