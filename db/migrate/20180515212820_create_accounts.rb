class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :user_name
      t.string :password
      t.boolean :is_admin, default: false
      t.string :name
      t.string :phone
      t.string :address
      t.float :accumulation
      t.timestamps
    end
  end
end
