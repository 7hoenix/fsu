class AddHomeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :home, :integer
  end
end
