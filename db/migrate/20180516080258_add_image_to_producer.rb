class AddImageToProducer < ActiveRecord::Migration[5.2]
  def change
    add_column :producers, :image, :string
  end
end
