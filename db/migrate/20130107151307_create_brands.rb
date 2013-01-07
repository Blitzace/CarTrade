class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :Name
      t.text :Description
      t.references :Manufacturer
      t.timestamps
    end
  end
end
