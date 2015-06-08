class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name
      t.text :translation
      t.integer :displayed
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
