class Lecture < ActiveRecord::Base
  has_one :schedule
  has_one :instructor
  has_many :users

end
