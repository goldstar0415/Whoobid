class ChangeTelephoneToStringInUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :telephone, :string
  end
end
