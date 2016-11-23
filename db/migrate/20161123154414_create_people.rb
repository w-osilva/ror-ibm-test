class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :firs_name
      t.string :last_name
      t.references :address, foreign_key: true
      t.references :company, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
