class Timetable < ActiveRecord::Base
  attr_accessible :classname, :duration, :endtime, :friday, :jplevel, :monday, :saturday, :school, :startdate, :starttime, :sunday, :thursday, :tuesday, :wednesday
  validates :classname,presence:true
end
