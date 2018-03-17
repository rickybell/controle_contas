class CreateSubsidiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :subsidiaries do |t|
      t.references :parent, :polymorphic => true
      t.timestamps
    end
  end
end
