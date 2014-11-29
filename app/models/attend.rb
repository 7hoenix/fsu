class Attend < ActiveRecord::Base
  belongs_to :schedule, :class_name =>"USER", :foreign_key => "schedule_id"
  belongs_to :user
  validates_presence_of :user_id, :schedule_id


#Record a new attendance
  def attending(user,schedule)
  unless Attend.exists?(user,schedule)
  create(:user_id => user, :schedule_id => schedule, :status => 'attending')
  end

  end

  end

