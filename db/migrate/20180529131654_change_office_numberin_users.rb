class ChangeOfficeNumberinUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :office_number, :integer, :null => true
  end
end
