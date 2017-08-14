class AddRefCategoriesToBooks < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :books, :categories, column: :category_id
  end
end
