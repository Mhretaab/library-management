class CreateBooks < ActiveRecord::Migration[5.0]
  def up
    create_table :books do |t|
      t.string :uuid
      t.string :title
      t.string :author
      t.string :isbn
      t.integer :pages_number
      t.integer :total
      t.integer :category_id

      t.timestamps
    end
  end

  def down
    drop_table :books
  end
end
