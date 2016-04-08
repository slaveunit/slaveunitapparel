class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at
      t.string :colour
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_updated_at
      t.decimal :price, precision: 8, scale: 2
      t.boolean :active
      t.string :size

      t.timestamps null: false
    end
  end
end
