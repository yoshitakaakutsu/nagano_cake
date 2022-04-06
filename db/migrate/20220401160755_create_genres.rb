class CreateGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :genres do |t|

      t.timestamps

      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
