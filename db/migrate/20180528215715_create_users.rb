class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :role
      t.boolean :verification

      t.timestamps
    end
  end
end
