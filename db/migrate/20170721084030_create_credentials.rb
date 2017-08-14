class CreateCredentials < ActiveRecord::Migration[5.0]
  def up
    create_table :credentials do |t|
      t.string :uuid
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end
  end

  def down
    drop_table :credentials
  end
end
