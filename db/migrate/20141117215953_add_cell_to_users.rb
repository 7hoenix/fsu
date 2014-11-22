class AddCellToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cell, :integer
  end
end
