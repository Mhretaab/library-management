class CreateGroups < ActiveRecord::Migration[5.0]
  def up
    create_table :groups do |t|
      t.string :uuid
      t.string :group_name
      t.string :description

      t.timestamps
    end
  end

  def down
    drop_table :groups
  end
end
