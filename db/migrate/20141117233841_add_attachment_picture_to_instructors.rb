class AddAttachmentPictureToInstructors < ActiveRecord::Migration
  def self.up
    change_table :instructors do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :instructors, :picture
  end
end
