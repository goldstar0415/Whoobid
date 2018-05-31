class ChangeAuctions < ActiveRecord::Migration[5.2]
  def change
  	change_table :auctions do |t|
  		t.belongs_to :author, index: true
  	end
  end
end
