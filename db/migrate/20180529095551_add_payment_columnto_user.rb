class AddPaymentColumntoUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :payment, :integer
  end
end
