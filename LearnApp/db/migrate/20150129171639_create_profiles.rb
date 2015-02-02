class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :level, :default => 1
      t.integer :points, :default => 0 
      t.references :user

      t.timestamps
    end
  end
end
