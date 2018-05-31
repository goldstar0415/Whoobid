class ChangeBelongsToPhoto < ActiveRecord::Migration[5.2]
  def change
  	remove_column :photos, :user_id
  	change_table :photos do |t|
  		t.belongs_to :auction, index: true
  	end
  end
end
