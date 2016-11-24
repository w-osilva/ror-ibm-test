class CreateAdresses < ActiveRecord::Migration[5.0]
  def change
    create_table :adresses do |t|
      t.string :address
      t.string :county
      t.string :zip
      t.references :city, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
