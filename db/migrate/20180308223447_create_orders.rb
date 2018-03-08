class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false 
      t.string :item, null: false 
      t.string :giftee_email, null: false 
      t.string :giftee_name, null: false 

      t.timestamps
    end
  end
end
