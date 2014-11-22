class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :instructorname
      t.string :qualifications
      t.string :instructordescription

      t.timestamps
    end
  end
end
