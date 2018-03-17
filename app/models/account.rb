class Account < ApplicationRecord
    belongs_to :person, :polymorphic => true
end
