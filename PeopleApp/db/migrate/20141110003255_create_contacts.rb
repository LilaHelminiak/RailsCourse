class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :person_id
      t.string :mail
      t.string :phone

      t.timestamps
    end
  end
end
