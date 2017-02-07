class AddForeignKeyToOnsies < ActiveRecord::Migration[5.0]
  def change
    add_column :onesies, :user_id, :integer
  end
end
