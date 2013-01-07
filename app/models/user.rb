class User < ActiveRecord::Base
has_many :cars, :through => :bids
has_many :bids
end
