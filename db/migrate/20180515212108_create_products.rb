class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :cpu
      t.string :ram
      t.string :memory
      t.string :vga
      t.string :front_camera
      t.string :back_camera
      t.string :os
      t.string :bluetooth
      t.string :screen
      t.string :pin
      t.float  :price
      t.string :images, array: true
      t.string :weight
      t.string :status
      t.integer :numofbuy
      t.references :category, foreign_key: true
      t.references :producer, foreign_key: true
      t.timestamps
    end
  end
end
