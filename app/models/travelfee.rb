class Travelfee < ActiveRecord::Base
  attr_accessible :classname, :date, :travel_fee, :userid
  validates:userid,numericality:{only_integer:true}
  self.per_page=5
end
WillPaginate.per_page=5
