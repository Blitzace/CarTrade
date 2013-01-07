class User < ActiveRecord::Base
has_many :cars, :through => :bids
has_many :bids

validates_presence_of :Name
validates_presence_of :address
end
