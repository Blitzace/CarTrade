class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Name
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.text :address
      t.integer :telephone
      t.date :DOB
      t.references :bid

      t.timestamps
    end
    add_index :users, :bid_id
  end
end
