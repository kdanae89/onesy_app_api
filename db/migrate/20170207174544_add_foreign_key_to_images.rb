class AddForeignKeyToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :onesy_id, :integer
  end
end
