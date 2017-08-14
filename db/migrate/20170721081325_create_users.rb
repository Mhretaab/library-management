class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.string :uuid
      t.string :first_name
      t.string :last_name
      t.string :id_card
      t.string :phone
      t.string :address_line_one
      t.string :address_line_two
      t.string :zipcode
      t.integer :credential_id

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
