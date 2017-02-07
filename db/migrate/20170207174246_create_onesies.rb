class CreateOnesies < ActiveRecord::Migration[5.0]
  def change
    create_table :onesies do |t|
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
