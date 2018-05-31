class AddOtherColumnsToAuction < ActiveRecord::Migration[5.2]
  def change

  	add_column :auctions, :brochure, :string
  	  add_column :auctions, :vendor_id, :string
  	add_column :auctions, :auction_pack, :string

  end
end
