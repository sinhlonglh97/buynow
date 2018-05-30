class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content
      t.timestamps
      t.references :product, foreign_key: true
    end
  end
end
