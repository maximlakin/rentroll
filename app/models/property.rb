class Property < ActiveRecord::Base
  attr_accessible :address
  validates :address, :presence => true, :uniqueness=> {:case_sensitive => false}
  has_many :units, :dependent => :destroy
end
