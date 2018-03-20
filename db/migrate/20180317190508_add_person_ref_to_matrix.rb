class AddPersonRefToMatrix < ActiveRecord::Migration[5.1]
  def change
    add_reference :matrices, :person, :polymorphic => true
  end
end
