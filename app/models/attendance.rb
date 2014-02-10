class Attendance < ActiveRecord::Base
  attr_accessible :date, :leavetime, :reachtime, :userid
end
