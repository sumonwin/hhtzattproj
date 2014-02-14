class Travelfee < ActiveRecord::Base
  attr_accessible :classname, :date, :travel_fee, :userid
  validates:userid,numericality:{only_integer:true},presence:true
  validates:travel_fee,presence:true
  belongs_to :user
  belongs_to :timetable
  self.per_page=5
end
WillPaginate.per_page=5
