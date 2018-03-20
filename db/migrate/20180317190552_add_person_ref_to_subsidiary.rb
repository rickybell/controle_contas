class AddPersonRefToSubsidiary < ActiveRecord::Migration[5.1]
  def change
    add_reference :subsidiaries, :person, :polymorphic => true
  end
end
