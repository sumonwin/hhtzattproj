class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me


  attr_accessible :NRCnumber, :address, :date_of_entry, :dob, :gender, :leaveday, :name, :normaltravelfee, :phone, :team, :userid, :year_of_entry
  has_many :travelfees
  has_many :attendances
validates :userid, numericality: {only_integer:true},presence:true
validates :name, presence: true,format: {with:/\A[a-zA-Z0-9]+\z/,message:"only letters allowed"}
validates :address,  presence: true
validates :phone, numericality: {only_integer:true}
validates :team, presence: true
validates :normaltravelfee, numericality: {only_integer:true}
validates :year_of_entry, presence: true, numericality: {only_integer:true}
validates :leaveday, numericality: {only_integer:true , less_than_or_equal_to: 20}
validates :date_of_entry,presence: true

 self.per_page=5
end
WillPaginate.per_page=5

