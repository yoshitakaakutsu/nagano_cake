class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.timestamps
      t.string :name
      t.text :introduction
      t.integer :price
      t.boolean :is_active, null: false, default: false
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
