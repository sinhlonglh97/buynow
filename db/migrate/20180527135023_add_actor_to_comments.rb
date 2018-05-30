class AddActorToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :actor, :string
  end
end
