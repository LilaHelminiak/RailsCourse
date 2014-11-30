class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.text :name
      t.text :gender
      t.text :age
      t.timestamps
    end
  end
end
