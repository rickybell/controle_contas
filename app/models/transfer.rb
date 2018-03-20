class Transfer < ApplicationRecord
  belongs_to :subsidiary
  has_many :transactions
end
