class ChangeDisplayedToBoolean < ActiveRecord::Migration
  def change
    change_column :words, :displayed, :boolean
  end
end