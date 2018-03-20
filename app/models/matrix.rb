class Matrix < ActiveRecord::Base
  acts_as_account
  belongs_to :person, :polymorphic => true
  has_many :contributions
  has_many :childr
  has_many :transactions
end
