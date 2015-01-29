class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :level
      t.integer :points
      t.references :user

      t.timestamps
    end
  end
end
