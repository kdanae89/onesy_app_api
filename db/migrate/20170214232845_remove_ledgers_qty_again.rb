class RemoveLedgersQtyAgain < ActiveRecord::Migration[5.0]
   def change
     remove_column :ledgers, :qty
   end
end
