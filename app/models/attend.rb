class Attend < ActiveRecord::Base
  belongs_to :schedule, :class_name =>"USER", :foreign_key => "schedule_id"
  belongs_to :user
  validates_presence_of :user_id, :schedule_id


  def self.exists?(user,schedule)
    not find_by_user_id_and_schedule_id(user,schedule).nil?
  end

  def self.request(user,schedule)
    unless user == schedule or Attend.exists?(user,schedule)
      transaction do
      create(:user => user, :schedule => schedule)
    end
    end
  end

  end
