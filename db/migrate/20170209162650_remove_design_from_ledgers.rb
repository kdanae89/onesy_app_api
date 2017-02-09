class RemoveDesignFromLedgers < ActiveRecord::Migration[5.0]
  def change
    remove_column :ledgers, :design
  end
end
