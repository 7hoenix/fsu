class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :classid
      t.date :day
      t.time :start
      t.integer :duration

      t.timestamps
    end
  end
end
