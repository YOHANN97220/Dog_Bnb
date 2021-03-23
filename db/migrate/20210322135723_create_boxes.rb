class CreateBoxes < ActiveRecord::Migration[6.1]
  def change
    create_table :boxes do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :price_per_day

      t.timestamps
    end
  end
end
