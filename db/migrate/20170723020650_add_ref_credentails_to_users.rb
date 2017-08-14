class AddRefCredentailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :users, :credentials, column: :credential_id
  end
end
