class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|

      t.string :main_photo, :null => false
      t.string :second_photo
      t.string :third_photo
      t.string :fourth_photo
      t.belongs_to :user, :index => true
      t.timestamps
    end
  end
end
