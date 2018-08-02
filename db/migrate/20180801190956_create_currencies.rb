class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string :symbol, null: false
      t.string :symbol_native
      t.string :name, null: false
      t.integer :decimal_digits
      t.string :code, null: false
      t.integer :rounding
      t.string :name_plural
      t.float :rate, null: false

      t.timestamps
    end
  end
end
