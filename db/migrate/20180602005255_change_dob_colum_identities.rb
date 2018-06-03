class ChangeDobColumIdentities < ActiveRecord::Migration[5.2]
  def change
  	change_column :identities, :dob, :date
  end
end
