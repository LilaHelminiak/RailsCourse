class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :description
      t.string :entry
      t.string :category      
      t.references :user

      t.timestamps
    end
  end
end
