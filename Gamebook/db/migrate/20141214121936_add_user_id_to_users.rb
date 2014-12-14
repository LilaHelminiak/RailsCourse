class AddUserIdToUsers < ActiveRecord::Migration
  def change
    execute "ALTER TABLE users ADD COLUMN user_id serial"
  end
end
