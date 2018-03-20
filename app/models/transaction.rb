class Transaction < ApplicationRecord
  belongs_to :origin, :polymorphic => true, :foreign_key => 'origin_id',optional: true
  belongs_to :destiny, :polymorphic => true, :foreign_key => 'destiny_id'
  belongs_to :type, :polymorphic => true, :foreign_key => 'type_id'
end