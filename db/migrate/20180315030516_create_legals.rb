class CreateLegals < ActiveRecord::Migration[5.1]
  def change
    create_table :legals do |t|
      t.string :cnpj
      t.string :social_name
      t.string :fantasy_name

      t.timestamps
    end
  end
end
