class CreateIssuances < ActiveRecord::Migration[5.0]
  def up
    create_table :issuances do |t|
      t.string :uuid
      t.integer :book_id
      t.integer :issuer_id
      t.integer :issued_to_id
      t.datetime :issuance_date
      t.datetime :return_date
      t.text :remark
      t.integer :status, :default => 0
      t.timestamps
    end
  end

  def down
    drop_table :issuances
  end
end
