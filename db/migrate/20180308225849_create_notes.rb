class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.integer :order_id, null: false
      t.string :photo_url, null: false
      t.string :template, null: false
      t.string :message, null: false

      t.timestamps
    end
  end
end
