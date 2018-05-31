class ChangeOfficeNumberinUsersAgain < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :office_number, :string, :null => true
  end
end
