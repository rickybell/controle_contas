class AddStatusToMatrix < ActiveRecord::Migration[5.1]
  def change
    add_column :matrices, :status, :string, :default => 'active'
  end
end
