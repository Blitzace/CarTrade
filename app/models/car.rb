class Car < ActiveRecord::Base
  belongs_to :Manufacturer
  belongs_to :Brand
  has_many :bids
  has_many :users, :through => :bids
  validates_presence_of	:VIN
  validates_presence_of	:Price
  validates_uniqueness_of :VIN

end
