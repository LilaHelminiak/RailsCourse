class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :description
      t.string :entry
      t.string :category
      t.timestamps
    end
  end
end
