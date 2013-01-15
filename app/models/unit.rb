class Unit < ActiveRecord::Base
  attr_accessible :current_rent, :move_in, :property_id, :unumber
  validates :current_rent, :move_in, :unumber, :presence=>true
  belongs_to :property
end
