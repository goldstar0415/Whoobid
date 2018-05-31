class NewColumnsToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :company_name, :string, :null => true
  	add_column :users, :office_number, :integer, :default => 0, :null => false
  end
end
