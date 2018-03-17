class Matrix < ActiveRecord::Base.extend Account
  attr_accessor :contributions, :childr
  has_many :contributions
  has_many :childr
end
