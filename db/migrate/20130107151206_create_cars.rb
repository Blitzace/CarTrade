class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :VIN
      t.integer :Year
      t.references :Manufacturer
      t.references :Brand
      t.string :State
      t.string :Details
      t.integer :Price
      t.references :bid

      t.timestamps
    end
    add_index :cars, :Manufacturer_id
  end
end
