class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :gender
      t.string :favourite_foods
      t.timestamps
    end
  end
end
