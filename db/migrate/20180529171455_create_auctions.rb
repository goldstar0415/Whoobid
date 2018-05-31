class CreateAuctions < ActiveRecord::Migration[5.2]
  def change
    create_table :auctions do |t|

      t.string :address, :null => false
      t.string :vendor_name, :null => false
      t.string :contact, :null => false
      t.string :email, :null => false
      t.string :property_type, :null => false
      t.string :tenure, :null => false
      t.datetime :auction_date_time, :null => false
      t.string :auction_method, :null => false
      t.decimal :reserve_price, :null => false
      t.decimal :starting_price, :null => false
      t.string :key_features, :null => false
      t.text :property_description, :null => false

      t.timestamps
    end
  end
end
