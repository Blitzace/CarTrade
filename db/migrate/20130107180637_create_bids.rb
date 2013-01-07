class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :user
      t.references :car
      t.integer :bidding

      t.timestamps
    end
    add_index :bids, :user_id
    add_index :bids, :car_id
  end
end
