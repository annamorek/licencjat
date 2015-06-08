class AddMail < ActiveRecord::Migration
  def change
    add_column :words, :mail, :string
  end
end
