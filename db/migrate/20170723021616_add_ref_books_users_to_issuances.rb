class AddRefBooksUsersToIssuances < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :issuances, :books, column: :book_id
    add_foreign_key :issuances, :users, column: :issuer_id
    add_foreign_key :issuances, :users, column: :issued_to_id
  end
end
