class AddIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :image_id, :integer
  end
end
