class Schedule < ActiveRecord::Base
  has_one :lecture
  has_many :attends
  has_many :users, through: :attends



end
