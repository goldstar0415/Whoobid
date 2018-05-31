class ChangeAgiainTable < ActiveRecord::Migration[5.2]
  def change
  	rename_column :auctions, :author_id, :user_id 
  end
end
