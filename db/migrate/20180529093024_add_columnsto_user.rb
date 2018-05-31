class AddColumnstoUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :title, :string
  	add_column :users, :dob, :date
  	add_column :users, :postcode, :string
  	add_column :users, :telephone, :string

  end
end
