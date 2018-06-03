class CreateIdentities < ActiveRecord::Migration[5.2]
  def change
    create_table :identities do |t|
      t.string :name
      t.string :adress
      t.string :dob
      t.string :id_number
      t.string :document
      t.string :address_proof
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
