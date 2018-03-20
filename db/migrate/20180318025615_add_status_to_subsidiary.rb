class AddStatusToSubsidiary < ActiveRecord::Migration[5.1]
  def change
    add_column :subsidiaries, :status, :string, :default => 'active'
  end
end
