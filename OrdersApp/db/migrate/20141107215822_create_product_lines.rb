class CreateProductLines < ActiveRecord::Migration
  def change
    create_table :product_lines do |t|
      t.integer :product_id
      t.integer :order_id
	  t.integer :amount
	  
      t.timestamps
    end
  end
end
