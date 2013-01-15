require 'SomeLogic'

class Property < ActiveRecord::Base
  include SomeLogic
  attr_accessible :address
  validates :address, :presence => true, :uniqueness=> {:case_sensitive => false}
  has_many :units, :dependent => :destroy

  #scope :processed, where("fulfilled =? OR canceled = ?",true,true)
  #scope :pending, where("fulfilled =? AND canceled = ?",false,false)

  #STATES=%w{AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY}
  #validates :address, :city, :email, :name, :state, :zip, :presence => true
  #validates :state, :inclusion => STATES
  #validates :email, :format=>{:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
  #validates :zip, :format=>{:with => /^\d{5}$/}

  #def get_states
  # 	STATES
  # end

  #def get_total
  #  line_items.to_a.sum{|l| l.total_price}
  #end
end
