class Subsidiary < ActiveRecord::Base
  acts_as_account
  belongs_to :person, :polymorphic => true
  has_many :transfers
  belongs_to :parent, :polymorphic => true, :foreign_key => 'parent_id'
  has_many :children, :class_name => 'Subsidiary', :foreign_key => 'parent_id'
  has_many :transactions
  def root_parent 
      if parent.instance_of? Matrix
        return parent
      else
        return parent.root_parent
      end 
  end
end
