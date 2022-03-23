class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end