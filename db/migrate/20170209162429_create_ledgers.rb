class CreateLedgers < ActiveRecord::Migration[5.0]
  def change
    create_table :ledgers do |t|
      t.string :design
      t.references :image, foreign_key: true
      t.references :onesy, foreign_key: true
      t.integer :qty

      t.timestamps
    end
  end
end
