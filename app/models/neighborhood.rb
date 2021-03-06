class Neighborhood < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :name, :presence => true, :uniqueness => { :name => :city }
  has_many :venues
end
