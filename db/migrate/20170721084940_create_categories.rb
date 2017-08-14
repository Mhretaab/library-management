class CreateCategories < ActiveRecord::Migration[5.0]
  def up
    create_table :categories do |t|
      t.string :uuid
      t.string :category_name
      t.string :description

      t.timestamps
    end
  end

  def down
    drop_table :categories
  end
end
