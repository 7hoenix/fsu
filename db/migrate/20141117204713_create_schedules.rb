class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :classid
      t.datetime :starttime
      t.datetime :endtime

      t.timestamps
    end
  end
end
