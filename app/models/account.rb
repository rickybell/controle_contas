class Account < ActiveRecord::Base
    belongs_to :accnt, :polymorphic => true, :dependent => :destroy
end
