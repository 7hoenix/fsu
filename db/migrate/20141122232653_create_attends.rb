class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.integer :user_id
      t.integer :schedule_id
      t.string :status
      t.timestamps
    end
  end
end
