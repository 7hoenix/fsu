class Attend < ActiveRecord::Base
  belongs_to :schedule
  belongs_to :user
end
