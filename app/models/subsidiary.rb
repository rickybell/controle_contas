class Subsidiary < Account 
  has_many :transfers
  belongs_to :parent, :polymorphic => true, :foreign_key => 'parent_id'
  has_many :children, :class_name => 'Subsidiary', :foreign_key => 'parent_id'
end
