class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :cell, :integer
    add_column :users, :is_admin, :boolean
  end
end
