class Attendance < ActiveRecord::Base
  attr_accessible :date, :leavetime, :reachtime, :userid
  validates :userid,numericality:{only_integer:true},presence:true
  validates :reachtime , :presence => { :message => "must be a valid date/time"}
  validates :leavetime , :presence => {:message => "must ve a valid date/time"}
  #validates :reach_must_be_before_leave_time
 self.per_page=5
 belongs_to :user
end
def reach_must_be_before_leave_time
	errors.add(:reachtime,"must be before end time") unless 
	 self.reachtime < self.leavetime
		
end
WillPaginate.per_page=5

