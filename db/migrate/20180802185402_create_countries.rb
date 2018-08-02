class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.belongs_to :currency, foreign_key: true
      t.string :alpha2, null: false
      t.string :alpha3, null: false
      t.string :name, null: false
      t.integer :numeric
      t.string :capital
      t.string :phone
      t.string :native
      t.string :flag
      t.column :languages, :json

      t.timestamps
    end
  end
end
