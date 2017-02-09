class RemoveOnesyIdFromImages < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :onesy_id
  end
end
