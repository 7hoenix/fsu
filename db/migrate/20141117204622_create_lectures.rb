class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :lecturename
      t.string :lecturedescription
      t.integer :instructorid

      t.timestamps
    end
  end
end
