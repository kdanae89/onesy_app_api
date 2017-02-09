class RenameLedgersDesigns < ActiveRecord::Migration[5.0]
  def change
    rename_table :ledgers, :designs
  end
end
