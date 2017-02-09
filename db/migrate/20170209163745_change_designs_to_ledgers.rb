class ChangeDesignsToLedgers < ActiveRecord::Migration[5.0]
  def change
    rename_table :designs, :ledgers
  end
end
