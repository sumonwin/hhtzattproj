class Attendance < ActiveRecord::Base
  attr_accessible :date, :leavetime, :reachtime, :userid
  validates :userid,numericality:{only_integer:true},presence:true
 self.per_page=5
 belongs_to :user
end
WillPaginate.per_page=5

